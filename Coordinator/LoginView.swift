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
            // Create the TextFields to enter username and password here..
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

