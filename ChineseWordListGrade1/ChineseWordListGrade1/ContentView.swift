//
//  ContentView.swift
//  ChineseWordListGrade1
//
//  Created by 岩田照太 on 2021/05/01.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var randomData : MakeRandomInt
    let word = MakeWordData()
    
    var body: some View {
        VStack{
            NavigationView{
                VStack{
                    
                    Spacer()
                    ZStack{
                        
                        Circle()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                            .rotationEffect(.degrees(240))
                            .frame(width: 80, height:80)
                        
                        Circle()
                            .trim(from: CGFloat(1-percent()), to: 1)
                            .stroke(Color.black,style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                            .rotationEffect(.degrees(990))
                            .rotation3DEffect(Angle(degrees: 100), axis: (x: 0, y: 0, z: 0))
                            .frame(width: 80, height: 80)
                        
                        Text("\(Int(percent()*100))"+" %").font(.title)
                    }
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: VerbTestTypeA()){
                        Text("　テスト　")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    .frame(width: 300, height: 160)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 4)).padding()
                    /*
                    NavigationLink(
                        destination: VerbListView()){
                        Text("　一覧　")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    .frame(width: 300, height: 160)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 4))
                 */
                }
            }
        }
    }
    
    func percent() -> Double {
        var percentage:Double
        
        if randomData.percentData.isEmpty {
            percentage = 0.50
        }else{
            percentage = Double(randomData.percentData[0])/Double(randomData.chineseCount.count)
        }
        return percentage
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(MakeRandomInt())
    }
}

