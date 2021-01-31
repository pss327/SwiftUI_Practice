//
//  ContentView.swift
//  SwiftUI_tutorial_001
//
//  Created by kiyoungj on 2021/01/31.
//

import SwiftUI

struct ContentView: View {
    
    // @State : 값의 변화를 감지 -> 뷰에 적용
    @State private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                HStack {
                    MyVstackView()
                    MyVstackView()
                    MyVstackView()
                    
                }// HStack
                // 뷰 속성
                //.padding(10.0)
                .padding(isActivated ? 50.0 : 10.0)
                
                //.background(Color.yellow)
                .background(isActivated ? Color.yellow : Color.blue)
                .onTapGesture {
                    
                    // 애니메이션 추가
                    withAnimation{
                        // toggle
                        self.isActivated.toggle()
                    }
                }
                //네비게이션 버튼 클릭시 MyTextView 화면으로 이동
                NavigationLink(destination: MyTextView()){
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 40))
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.padding(.top, 50)
            }// VStack
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
