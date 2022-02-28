//
//  TestAView.swift
//  ChinaWordList
//
//  Created by 岩田照太 on 2021/.
//

import SwiftUI

struct TestAView: View {
   
    var body: some View {
        VStack{
            Spacer()
            
            NavigationLink(destination: VerbTestTypeA()){
                Text("動詞")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 300, height: 150)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 4))
            }
            
            Spacer()
            
            NavigationLink(destination: Text("")){
                Text("名詞")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 300, height: 150)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 4))
            }
            
            Spacer()
            
            NavigationLink(destination: Text("")){
                Text("形容詞・副詞")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 300, height: 150)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 4))
            }
            
            Spacer()
 
        }
    }
}

struct TestAView_Previews: PreviewProvider {
    static var previews: some View {
        TestAView()
    }
}
