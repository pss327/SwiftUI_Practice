//
//  MyVstackView.swift
//  SwiftUI_tutorial_001
//
//  Created by kiyoungj on 2021/01/31.
//

import Foundation
import SwiftUI

struct MyVstackView: View {
    var body: some View {
        VStack {
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 60))
        } // Vstack
        .background(Color.red)
    }
}


struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
