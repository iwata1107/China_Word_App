//
//  VerbTestTypeA.swift
//  ChineseWordListGrade1
//
//  Created by 岩田照太 on 2021/05/01.
//

import SwiftUI

struct VerbTestTypeA: View {

    let word=MakeWordData()
    //var randomInt: Int
    @State var isShow = false
  
    var body: some View {
        VStack{
           
            if isShow == false {
                
                Button(action: {isShow = true
                }){
                    if isShow == false {
                        Text("スタート")
                            .frame(width: 150, height: 150)
                            .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.black, lineWidth: 4))
                            .padding()
                            
                    }
                }
            
            }
           
            
            if isShow {
                TestView(isShow: $isShow)
            }
           
           
        }
    }
}

struct VerbTestTypeA_Previews: PreviewProvider {
    static var previews: some View {
        VerbTestTypeA()
    }
}

