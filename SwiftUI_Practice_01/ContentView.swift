//
//  ContentView.swift
//  SwiftUI_Practice_01
//
//  Created by hyunndy on 2023/11/01.
//

import SwiftUI
import CoreData

/*
 View는 프로토콜이며, 다양한 Modifier를 제공한다.
 associatedtype Body : View를 가져야하며,
 따라서 body: some View안에는 View를 채택하는 무언가 넣어줘야한다.
 
 따라서 CustomView를 외부에서 생성해서 넣어주는것도 가능하다.
 */
struct ContentView: View {
    
    // Name이 변경되면 View를 다시 그린다!
    @State var name: String = "현디"
    
    var body: some View {
        VStack {
            Text("안녕하세요! \(name)")
            
            Button {
                name = "태훈!"
            } label: {
                Text("click")
            }
        }
    }
    
    /*
     @State State 변수는 왜필요한가?
     
     SwiftUI에서 사용하는 View는 Struct이다.
     mutating이 없기 때문에 안에 요소가 바뀌면, 그 때 마다 새로운 View를 다시 그려줘야한다.
     
     근데 언제 다시 그려져야할까? 무엇이 바뀌었을 때? 트리거가 뭐지? 어떤게 바뀌었을 때 View를 reload시켜야하지?
     -> 그게 바로 State 변수
     
     State변수가 바뀌면 iOS는 그림을 새로 그린다.
     
     
     
     
     */
}

struct MyView: View {
    var body: some View {
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
