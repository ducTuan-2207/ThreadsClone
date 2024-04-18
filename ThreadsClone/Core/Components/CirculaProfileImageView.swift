//
//  CirculaProfileImageView.swift
//  ThreadsClone
//
//  Created by macOS on 17/04/2024.
//

import SwiftUI

struct CirculaProfileImageView: View {
    var body: some View {
        Image("rose")
            .resizable()
            .scaledToFill()
            .frame(width: 40,height: 40)
            .clipShape(Circle())
    }
}

struct CirculaProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CirculaProfileImageView()
    }
}
