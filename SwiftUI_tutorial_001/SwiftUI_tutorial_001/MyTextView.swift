//
//  MyTextView.swift
//  SwiftUI_tutorial_001
//
//  Created by kiyoungj on 2021/01/31.
//

import Foundation
import SwiftUI

struct MyTextView : View {
    
    // @State : 값의 변화를 감지 -> 뷰에 적용
    @State private var index: Int = 0
    
    // 배경색 배열
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity,minHeight: 0,maxHeight: .infinity)
            
            Spacer()
        }
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)// 상단하단의 여백 처리
        .onTapGesture {
            print("배경아이템이 클릭 되었습니다.")
            
            if (self.index == self.backgroundColors.count-1){
                self.index = 0
            }else{
                self.index += 1
            }
        }
    }
}

struct MyTextView_Previews : PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
