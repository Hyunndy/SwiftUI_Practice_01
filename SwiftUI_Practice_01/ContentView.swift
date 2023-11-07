//
//  ContentView.swift
//  SwiftUI_Practice_01
//
//  Created by hyunndy on 2023/11/01.
//

import SwiftUI
import CoreData

struct Data: Identifiable {
    var id = UUID()
    
    var name: String
    var imageName: String = "t"
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "bolt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
            Spacer()
            Text("Bolt!")
            Button {
                print("Blink!")
            } label: {
                Text("Hit")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
