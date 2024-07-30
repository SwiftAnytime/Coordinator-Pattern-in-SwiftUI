//
//  LoginView.swift
//  Coordinator
//
//  Created by Mayank Gupta on 15/07/24.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isSecure: Bool = true
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Welcome Back")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .padding(.bottom, 40)
            
            VStack(alignment: .leading) {
                Text("Username")
                    .font(.headline)
                    .padding(.bottom, 5)
                
                TextField("Enter your username", text: $username)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5)
                    .padding(.bottom, 20)
                
                Text("Password")
                    .font(.headline)
                    .padding(.bottom, 5)
                
                HStack {
                    if isSecure {
                        SecureField("Enter your password", text: $password)
                    } else {
                        TextField("Enter your password", text: $password)
                    }
                    Button(action: {
                        isSecure.toggle()
                    }) {
                        Image(systemName: isSecure ? "eye.slash" : "eye")
                            .foregroundColor(.gray)
                    }
                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(5)
            }
            .padding(.horizontal, 30)
            
            Button(action: {
                // Handle login action here
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal, 30)
            }
            .padding(.top, 30)
            
            Spacer()
            
            VStack {
                Button(action: {
                    coordinator.presentSheet(.forgotPassword)
                }) {
                    Text("Forgot Password?")
                        .foregroundColor(.blue)
                }
                .padding(.bottom, 10)
                
                HStack {
                    Text("Don't have an account?")
                    Button(action: {
                        coordinator.presentFullScreenCover(.signup)
                    }) {
                        Text("Sign Up")
                            .foregroundColor(.blue)
                    }
                }
                .padding(.bottom, 20)
            }
        }
        .background(Color(.systemGroupedBackground))
        .edgesIgnoringSafeArea(.all)
    }
}

