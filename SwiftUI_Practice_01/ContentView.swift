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
        
        /**
         공부해야할 포인트.
         Stack에는 10개밖에 못들어가는데, 더 많은걸 넣으려면 어떻게?
         alignment가 StackView처럼 동작을 안하는데, 왜?
         
         Stack은 Stack이고, 안에 Contents들은 Contents들이네.
         Stack의 Frame에 맞게 애들이 align되는게 아니고..
         Contents중에 제일 큰 애 기준으로 사이즈가 잡히고.. 그 기준으로 Align이 먹는 느낌.
         (Stack의 Frame을 지정해줬는데도)
         만약 Stack의 Frame에 맞게 Content들을 align시키려면? 컨텐츠중에 하나의 frame을 Stack이랑 맞춰야한다.
         
         */
        VStack(alignment: .trailing) {
            Text("1234")
            Text("21")
            Text("35")
                .frame(width: 400, alignment: .trailing)
                .background(.blue)
        }
        
//        ZStack {
//            Color.orange
//            Text("1")
//        }
        
//        HStack {
//            Text("1")
//            Text("2")
//            Text("3")
//        }
        
        
//        VStack {
//            Text("1")
//            Text("2")
//            Text("3")
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
