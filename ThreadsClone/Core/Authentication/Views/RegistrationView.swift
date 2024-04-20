//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by macOS on 16/04/2024.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()
    
 
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            Image("threads")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            VStack {
                TextField("Enter your email", text: $viewModel.email)
                    .modifier(TextFieldModifier())
                    .autocapitalization(.none)
                SecureField("Enter your password", text: $viewModel.password)
                    .modifier(TextFieldModifier())
                TextField("Enter your full name", text: $viewModel.fullname)
                    .modifier(TextFieldModifier())
                
                TextField("Enter your user name", text: $viewModel.username)
                    .modifier(TextFieldModifier())
                Button {
                    Task {
                        try await viewModel.createUser()
                    }
                } label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 353, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                .padding(.vertical)
                Spacer()
                Divider()
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 3) {
                        Text("Already have an account?")
                        
                        Text("Sign In")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }

            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
