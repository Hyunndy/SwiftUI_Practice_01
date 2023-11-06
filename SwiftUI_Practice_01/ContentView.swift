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
        VStack {
            Text("Hello Hyunndy")
                .bold()
                .italic()
                .strikethrough()
            Text("Hello Hyunndy")
                .font(.system(size: 30))
            Text("Hello Hyunndy")
                .underline(color: .purple)
                .foregroundColor(.red)
                .background(.orange)
            Text("Hello Hyunndy")
                .foregroundColor(.green)
                .font(.system(size: 40, weight: .bold, design: .rounded))
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
