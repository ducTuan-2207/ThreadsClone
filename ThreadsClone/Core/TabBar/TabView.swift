//
//  TabView.swift
//  ThreadsClone
//
//  Created by macOS on 16/04/2024.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Feed View")
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                    //Text("Feed")
                }
                .onAppear {selectedTab = 0}
                .tag(0)
            Text("Explore View")
                .tabItem {
                    Image(systemName: selectedTab == 1 ? "magnifyingglass.fill" : "magnifyingglass")
                        .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                        //Text("Explore")
                }
                .onAppear {selectedTab = 1}
                .tag(1)
            Text("Upload View")
                .tabItem {
                    Image(systemName: selectedTab == 2 ? "plus.fill" : "plus")
                        .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                    //Text("Upload")
                }
                .onAppear {selectedTab = 2}
                .tag(2)
            Text("Activity View")
                .tabItem {
                    Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                        .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                   // Text("Activiti")
                }
                .onAppear {selectedTab = 3}
                .tag(3)
            Text("Profile View")
                .tabItem {
                    Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                        .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                    //Text("Profile")
                }
                .onAppear {selectedTab = 4}
                .tag(4)
        }
        .tint(.black)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView(selectedTab: .constant(0))
    }
}
