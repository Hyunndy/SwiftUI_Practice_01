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
        
        let names: [Data] = [Data(name: "현지"), Data(name: "태훈"), Data(name: "얍얍"), Data(name: "현지2"), Data(name: "태훈2"), Data(name: "얍얍2"), Data(name: "현지3"), Data(name: "태훈3"), Data(name: "얍얍3"), Data(name: "현지4"), Data(name: "태훈4"), Data(name: "얍얍4")]
        
        // 동적인 리스트
        List(names) { data in
            
            Section(content: {
                HStack {
                    Text(data.name)
                    Image(data.imageName)
                        .resizable()
                        .clipped()
                        .frame(width: 30, height: 30)
                }
            }, header: {
                Text("헤더")
            }, footer: {
                Text("푸터")
            })
        }
        
        // 정적인것
//        List {
//            HStack {
//                Image("t")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 30, height: 30)
//                    .clipped()
//                Text("현디")
//            }
//
//            HStack {
//                Image("t")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 30, height: 30)
//                    .clipped()
//                Text("태훈")
//            }
//
//            HStack {
//                Image("t")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 30, height: 30)
//                    .clipped()
//                Text("얍얍")
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
