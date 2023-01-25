//
//  ProfileView.swift
//  novoyaz
//
//  Created by Kisluhin Mihail on 25.01.23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        Image("me")
            .resizable()
            .frame(width: 300, height: 300)
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
