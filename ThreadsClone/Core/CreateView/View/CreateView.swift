//
//  CreateView.swift
//  ThreadsClone
//
//  Created by macOS on 17/04/2024.
//

import SwiftUI

struct CreateView: View {
    @State private var captionText = ""
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top){
                    CirculaProfileImageView()
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("Duc Tuan")
                            .fontWeight(.semibold)
                        
                        TextField("Start a thread ...", text: $captionText, axis: .vertical)
                    }
                    .font(.footnote)
                    Spacer()
                    if captionText.isEmpty {
                        Button {
                            captionText = ""
                        }label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Spacer()
            }
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        // Xử lý khi nút "Cancel" được nhấn
                        dismiss()
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Post") {
                        // Xử lý khi nút "Cancel" được nhấn
                    }
                    .opacity(captionText.isEmpty ? 0.5 : 1.0)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                }
                
            }
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
