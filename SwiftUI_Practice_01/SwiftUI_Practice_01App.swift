//
//  SwiftUI_Practice_01App.swift
//  SwiftUI_Practice_01
//
//  Created by hyunndy on 2023/11/01.
//

import SwiftUI

@main
struct SwiftUI_Practice_01App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

struct Previews_SwiftUI_Practice_01App_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
