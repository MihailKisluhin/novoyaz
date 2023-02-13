//
//  WordDetailsView.swift
//  novoyaz
//
//  Created by Kisluhin Mihail on 30.01.23.
//

import SwiftUI

struct WordDetailsView: View {

    //@EnvironmentObject
    let word: DataManager
    
    var body: some View { 
        
        VStack (alignment: .leading) {
            HStack{
                Text ("Они говорят")
                Spacer()
                Button ("Done") {}
            }
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            Text("opisanie")
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            Text("opisanie")
            Spacer()
        }
        .padding(20)
        
    }
}

//struct WordDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        WordDetailsView()
//    }
//}
