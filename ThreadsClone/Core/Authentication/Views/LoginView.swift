//
//  LoginView.swift
//  ThreadsClone
//
//  Created by macOS on 16/04/2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("threads")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                VStack {
                    TextField("Enter your email", text: $viewModel.email)
                        .autocapitalization(.none)//khong tu dong viet hoa chu cai dau
                        .modifier(TextFieldModifier())
                    TextField("Enter your password", text: $viewModel.password)
                        .modifier(TextFieldModifier())
                }
                NavigationLink {
                    Text("Forgot password?")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
//                .padding(.bottom)
                
                Button {
                    Task {
                        try await viewModel.login()
                    }
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 353, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                Spacer()
                Divider()
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
