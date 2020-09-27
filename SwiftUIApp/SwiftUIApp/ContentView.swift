//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Александр Арсенюк on 27.09.2020.
//  Copyright © 2020 Personal Team. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let dataSource: [User] = Array.init(repeating: User(), count: 15)
    
    var body: some View {
        NavigationView{
            List(dataSource) { model in
                VStack(alignment: .leading) {
                    Image(uiImage: model.postImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(8)
                    Spacer().frame(width: 0, height: 12, alignment: .bottom)
                    HStack {
                        Image(uiImage: model.avatarImage)
                            .resizable()
                            .frame(width: 48, height: 48, alignment: .leading)
                            .cornerRadius(24)
                            .aspectRatio(contentMode: .fill)
                        Text("\(model.name)  \(model.surname)\n\(model.age) лет")
                    }
                }
                .navigationBarTitle("News")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
