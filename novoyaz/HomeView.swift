//
//  HomeView.swift
//  novoyaz
//
//  Created by Kisluhin Mihail on 25.01.23.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        Image("bgHome")
            .resizable()
            .frame(width: 300, height: 146)
            .opacity(0.3)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
