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
//        Image("t")
//            .resizable()
////            .aspectRatio(contentMode: .fit) // 이미지의 비율을 깨지 않은 상태로 View에 FIt하게.
////            .aspectRatio(contentMode: .fill) // 이미지의 비율을 깨지 않은 상태로 View를 넘어도됨 + 얘는 Clipped()와 같이 써야한다.
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 300.0, height: 300.0, alignment: .center)
//            .clipped()
//            .background(.orange)
//            .border(.red, width: 10)
        Image(systemName: "heart")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 30, height: 30)
            .background(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
