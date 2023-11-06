//
//  ContentView.swift
//  SwiftUI_Practice_01
//
//  Created by hyunndy on 2023/11/01.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Text("안녕")
                    .frame(width: 300, height: 200)
                    .background(.red)
                Text("안녕")
                    .frame(width: 300, height: 200)
                    .background(.orange)
                Text("안녕")
                    .frame(width: 300, height: 200)
                    .background(.blue)
                
            }
        }
        .background(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
