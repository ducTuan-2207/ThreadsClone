//
//  ProfileView.swift
//  ThreadsClone
//
//  Created by macOS on 17/04/2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var seclectFilter: ProfileFilter = .threads
    @Namespace var animation
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false){
                VStack(spacing: 20) {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 12) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Ducc Tuan")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                Text("duc_tuan")
                                    .font(.subheadline)
                            }
                            Text("Formula 1 driver for Scuderia Ferrari")
                                .font(.footnote)
                            Text("100 followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        CirculaProfileImageView()
                    }
                    Button {
                        
                    } label: {
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 352, height: 32)
                            .background(.black)
                            .cornerRadius(8)
                    }
                    //user content list view
                    VStack{
                        HStack {
                            ForEach(ProfileFilter.allCases){filter in
                                VStack{
                                    Text(filter.titile)
                                        .font(.subheadline)
                                        .fontWeight(seclectFilter == filter ? .semibold : .regular)
                                    if seclectFilter == filter {
                                        Rectangle()
                                            .foregroundColor(.black)
                                            .frame(width: filterBarWidth, height: 1)
                                            .matchedGeometryEffect(id: "item", in: animation)
                                    } else {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: filterBarWidth, height: 1)
                                    }
                                    
                                }
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        seclectFilter = filter
                                    }
                                }
                            }
                        }
                        LazyVStack {
                            ForEach(0 ... 10 , id:\.self) {threds in
                                ThreadCell()
                            }
                        }
                    }
                    .padding(.vertical, 8)
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        AuthService.share.signOut()
                    }label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
            .padding(.horizontal)
        
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

