//
//  ContentView.swift
//  SwiftUI_Practice_01
//
//  Created by hyunndy on 2023/11/01.
//

import SwiftUI
import CoreData

/**
 네이버 웹툰 작가 홈
 
 1. ViewThatFits가 뭐지?
 
 */

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            VStack(alignment: .leading, spacing: 10.0, content: {
                HStack(alignment: .center, content: {
                    Image("t")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100.0, height: 100.0, alignment: .center)
                        .cornerRadius(50.0)
                    Text("작가")
                        .font(.system(.title2, design: .rounded, weight: .bold))
                    Image(systemName: "bolt")
                        .foregroundColor(.white)
                        .background(.green)
                    
                })
                Text("안녕하세요 작가입니다\n절 보러왔군요")
                ViewThatFits(content: {
                    HStack(alignment: .center, spacing: 5.0, content: {
                        Button(action: {
                            print("관심이 눌렸다.")
                        }, label: {
                            Text("+ 관심 40,731")
                                .font(.system(.footnote, design: .rounded, weight: .bold))
                                .foregroundColor(.white)
                        })
                        .frame(maxWidth: .infinity, maxHeight: 30.0, alignment: .center)
                        .background(.green)
                        .cornerRadius(5.0)
                        
                        Button(action: {
                            print("다운로드가 눌렸다.")
                        }, label: {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(.white)
                        })
                        .frame(width: 30.0, height: 30.0)
                        .background(.red)
                        .cornerRadius(5.0)
                        
                        Button(action: {
                            print("다운로드가 눌렸다.")
                        }, label: {
                            Text("··· ")
                                .foregroundColor(.white)
                        })
                        .frame(width: 30.0, height: 30.0)
                        .background(.red)
                        .cornerRadius(5.0)
                        
                    })
                    
                    
                })
                WriterView()
            })
            .background(.orange)
            .padding(.init(top: 0.0, leading: 10.0, bottom: 0.0, trailing: 10.0))
            
            
            
        })
    }
}

struct WriterWork: Identifiable {
    let id: String
    let title: String
    let image: String
    let lastUpdateAt: String
}

struct WriterView: View {
    // Image(systemName: "bolt.heart")
    let writerWorks = [WriterWork(id: "0", title: "작품1", image: "bolt.heart", lastUpdateAt: "23.11.07"), WriterWork(id: "1", title: "작품2", image: "bolt.heart", lastUpdateAt: "23.11.07"), WriterWork(id: "2", title: "작품3", image: "bolt.heart", lastUpdateAt: "23.11.07")]
    
    var body: some View {
        VStack(spacing: 5.0, content: {
            GeometryReader(content: { geometry in
                
                List(writerWorks, rowContent: { work in
                    GeometryReader(content: { geometry in
                        HStack(content: {
                            Text("안녕")
                                .frame(width: geometry.size.width * 0.7, height: 500.0, alignment: .center)
                        })
                        
                        .background(.red)
                    })
                    
                })
                .frame(width: geometry.size.width * 0.7, height: 500.0, alignment: .center)
            })

        })
        //        .frame(width: 500.0, height: 500.0)
    }
}

struct EditorHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
