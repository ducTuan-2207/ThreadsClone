//
//  ThreadCell.swift
//  ThreadsClone
//
//  Created by macOS on 17/04/2024.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12){
               CirculaProfileImageView()
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Roses")
                            .font(.footnote)
                        .fontWeight(.semibold)
                        Spacer()
                        Text("1m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                            
                        }
                            
                    }
                    Text("Formula 1 champion")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    HStack(spacing: 16){
                        Button{
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        Button{
                            
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        Button{
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        Button{
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.vertical,8)
                }
            }
            Divider()
        }
        .padding()
    }
}

struct ThreadCell_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCell()
    }
}
