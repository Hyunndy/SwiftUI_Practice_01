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
        // safeArea침범 옵션 대박
//        Color(.blue).edgesIgnoringSafeArea(.bottom)
        
        
        // clipShape 이런 modifier 대박사건..
        Color(.orange)
            .frame(width: 300, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 150))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
