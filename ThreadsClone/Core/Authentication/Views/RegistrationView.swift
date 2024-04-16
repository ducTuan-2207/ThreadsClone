//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by macOS on 16/04/2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var pass = ""
    @State private var fullname = ""
    @State private var username = ""
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
                TextField("Enter your email", text: $email)
                    .modifier(TextFieldModifier())
                
                TextField("Enter your password", text: $pass)
                    .modifier(TextFieldModifier())
                TextField("Enter your full name", text: $fullname)
                    .modifier(TextFieldModifier())
                
                TextField("Enter your user name", text: $username)
                    .modifier(TextFieldModifier())
                Button {
                    
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
