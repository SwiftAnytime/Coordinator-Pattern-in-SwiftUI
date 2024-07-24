//
//  SignupView.swift
//  Coordinator
//
//  Created by Mayank Gupta on 23/07/24.
//

import SwiftUI

struct SignupView: View {
    @EnvironmentObject private var coordinator: Coordinator
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var isSecure: Bool = true

    var body: some View {
        VStack {
            Spacer()

            Text("Create Account")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)

            Image(systemName: "person.crop.circle.fill.badge.plus")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
                .padding(.bottom, 40)

            VStack(alignment: .leading) {
                Text("Username")
                    .font(.subheadline)
                    .padding(.bottom, 5)

                TextField("Enter your username", text: $username)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5)
                    .padding(.bottom, 20)

                Text("Email Address")
                    .font(.subheadline)
                    .padding(.bottom, 5)

                TextField("Enter your email address", text: $email)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5)
                    .padding(.bottom, 20)

                Text("Password")
                    .font(.subheadline)
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
                .padding(.bottom, 20)

                Text("Confirm Password")
                    .font(.subheadline)
                    .padding(.bottom, 5)

                HStack {
                    if isSecure {
                        SecureField("Confirm your password", text: $confirmPassword)
                    } else {
                        TextField("Confirm your password", text: $confirmPassword)
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
                coordinator.dismissCover()
            }) {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal, 30)
            }
            .padding(.top, 30)

            Spacer()

            Button(action: {
                coordinator.dismissCover()
            }) {
                Text("Already have an account?")
                    .foregroundColor(.blue)
            }
            .padding(.bottom, 20)
        }
        .background(Color(.systemGroupedBackground))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    SignupView()
}
