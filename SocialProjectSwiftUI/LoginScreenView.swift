//
//  LoginScreenView.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 07.03.2022.
//

import SwiftUI
import Combine

struct LoginScreenView: View {
    @State private var login = "Admin"
    @State private var password = "Admin"
    @State private var showIncorrectCredentialAlert: Bool = false
    @State private var shouldShowLogo: Bool = true
    @Binding var showUserView: Bool
    
    private let keyboardIsOnPublisher = Publishers.Merge( NotificationCenter.default.publisher(for:
    UIResponder.keyboardWillChangeFrameNotification)
            .map { _ in true },
        NotificationCenter.default.publisher(for:
    UIResponder.keyboardWillHideNotification)
            .map { _ in false }
    )
        .removeDuplicates()

    var body: some View {

        ScrollView(showsIndicators: false){
        VStack {
            if shouldShowLogo {
                HStack {
                    
                    Image("vk-logo3")
                        .resizable()
                        .frame(width: 60, height: 60)
                    
                
                }
                .padding([.top, .leading], 10.0)
                
                Text("Social Project")
                    .padding(.top, 50)
                    .padding(.bottom, 50)
                    .font(.largeTitle)
            }
            VStack {
                HStack(spacing: 40) {
                    Text("Login:")
                    //Spacer()
                    TextField("", text: $login)
                        .frame(maxWidth: 150)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                HStack(spacing: 10){
                    Text("Password:")
                    //Spacer()
                    TextField("", text: $password)
                        .frame(maxWidth: 150)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                }
                Button(action: self.onLoginPressed) {
                     Text("Log in")
                } .padding(.top, 50)
                .padding(.bottom, 20)
                .disabled(login.isEmpty || password.isEmpty)
                .modifier(ButtonsViewModifier(shadowColor: .green, shadowRadius: 3))
            }
        }
        .onReceive(keyboardIsOnPublisher) { isKeyboardOn in withAnimation(Animation.easeInOut(duration: 0.5)) {
                self.shouldShowLogo = !isKeyboardOn

            }
        }

        }.onTapGesture {
            UIApplication.shared.endEditing()
        }
        .alert(isPresented: $showIncorrectCredentialAlert) {
                        Alert(
                    title: Text("Error"),
                    message: Text("Incorrect login or password. Try again"),
                    dismissButton: .cancel()
                    )
        }
  }


    private func onLoginPressed(){
        if login == "Admin" && password == "Admin" {
            self.showUserView = true
            print ("Hello")
        } else {
            self.showIncorrectCredentialAlert = true
        }
    }
}
extension UIApplication { func endEditing() {
sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
} }

