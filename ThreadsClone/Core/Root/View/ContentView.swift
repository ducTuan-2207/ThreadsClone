//
//  ContentView.swift
//  ThreadsClone
//
//  Created by macOS on 15/04/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = contentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                CustomTabView(selectedTab: .constant(0))
            }
            else {
                LoginView()
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
