//
//  EditProfileView.swift
//  ThreadsClone
//
//  Created by macOS on 18/04/2024.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bioText = ""
    @State private var linkText = ""
    @State private var isPrivatePofile = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom,.horizontal])
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .fontWeight(.semibold)
                            Text("Duc Tuan Chanel")
                            
                        }
                        .font(.footnote)
                        Spacer()
                        CirculaProfileImageView()
                    }
                    Divider()
                    //bio field
                    VStack(alignment: .leading) {
                        Text("Bio")
                            .fontWeight(.semibold)
                        TextField("Enter your bio ...", text: $bioText, axis: .vertical)
                    }
                    Divider()
                    //links
                    VStack(alignment: .leading) {
                        Text("Links")
                            .fontWeight(.semibold)
                        TextField("Enter your links ...", text: $linkText, axis: .vertical)
                    }
                    Divider()
                    // private profile
                    Toggle("Private profile", isOn: $isPrivatePofile)
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        // Xử lý khi nút "Cancel" được nhấn
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        // Xử lý khi nút "Cancel" được nhấn
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                }
            }

        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
