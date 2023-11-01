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
        Button(action: {
            print("안녕하세요")
        }, label: {
//            Text("텍스트로된 버튼1")
//            Image(systemName: "eraser.fill")
//            Text("배경+여백있는버전")
//                .padding()
//                .frame(width: 150)
//                .background(.purple)
//                .cornerRadius(13.0)
//
//            Button("myButton", action: {
//                print("안녕ㅋ")
//            })
//            Button("Delete", role: .destructive, action: {
//                print("deleted")
//            })
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
