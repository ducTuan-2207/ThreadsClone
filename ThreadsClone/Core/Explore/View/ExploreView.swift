//
//  ExploreView.swift
//  ThreadsClone
//
//  Created by macOS on 17/04/2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self){user in
                        VStack {
                            HStack {
                                Image("rose")
                                    .resizable()
                                    .frame(width: 40,height: 40)
                                    .clipShape(Circle())
                                VStack(alignment: .leading){
                                    Text("Rose")
                                        .fontWeight(.semibold)
                                    Text("Blackpink")
                                }
                                .font(.footnote)
                                Spacer()
                                Text("Follow")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .frame(width: 100, height: 32)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(Color(.systemGray4), lineWidth: 1)
                                    }
                            }
                            .padding(.horizontal)
                        }
                        Divider()
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
