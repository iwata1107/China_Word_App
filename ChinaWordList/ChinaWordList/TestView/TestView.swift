//
//  TestView.swift
//  ChinaWordList
//
//  Created by 岩田照太 on 2021/.
//

import SwiftUI

struct TestView: View {
    
    @EnvironmentObject var randomData : MakeRandomInt
    let word = MakeWordData()
    @Binding var isShow : Bool
    @State var isCheck = true
    @State var hoge = 0
    @State var count =  [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152]
    @State var hogeMax = 0
    @State var isEnd = false
    
    var body: some View {
        VStack{
            Spacer()
                Button(action: end){
                    Text("終了")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(width: 60, height: 50)
                }
            Spacer()
              
            if hoge <= hogeMax{
                VStack{
                    Text(word.PinIn(int: word.wordCount(int: count[hoge/2])))
                        .font(.title2)
                    Text(word.MakechineseData(int: word.wordCount(int: count[hoge/2])))
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 300, height: 100)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 0))
                }
                    .onChange(of: hoge/2, perform: {value in
                        isCheckCheck()
                    })
                
                if hoge%2 == 1 {
                    Text(word.MakejapaneseData(int: word.wordCount(int: count[hoge/2])))
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 300, height: 100)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 0))
                }else{
                    Text("")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 300, height: 100)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 0))
                }
            }
            
            Button(action: toggle){
                if boolcheck() {
                    Image(systemName: "checkmark.square.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding()
                }else{
                    Image(systemName: "square")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding()
                }
            }.padding()
            
            
            HStack{
                Button(action: back){
                    Text("戻る")
                        .font(.title2)
                        .frame(width: 70, height: 60)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.black, lineWidth: 4))
                        .padding()
                }
                Button(action: mean){
                    Text("意味")
                        .font(.title2)
                        .frame(width: 70, height: 60)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.black, lineWidth: 4))
                        .padding()
                }
                Button(action: next){
                    if isEnd {
                        Text("終わり")
                            .font(.title2)
                            .frame(width: 70, height: 60)
                            .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.black, lineWidth: 4))
                            .padding()
                    }else{
                        Text("次へ")
                            .font(.title2)
                            .frame(width: 70, height: 60)
                            .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.black, lineWidth: 4))
                            .padding()
                    }
                }
                
            }
            Spacer()
        }.navigationBarBackButtonHidden(true)
        .onAppear(perform: {
            count.shuffle()
            hogeMax = count.count*2 - 1
            isCheckCheck()
        })
    }
    
    func end() -> Void {
        isShow = false
        
        if randomData.percentData.isEmpty   {
            randomData.percentData.append(randomData.checkData.count)
        }else{
            randomData.percentData.remove(at: 0)
            randomData.percentData.append(randomData.checkData.count)
        }
        UserDefaults.standard.set(randomData.percentData, forKey: "a")
        print(randomData.percentData)
        
    }
    
    
    func toggle() -> Void {
        isCheck = !isCheck
        //print(isCheck)
        if isCheck == true && boolcheck() == false{
            randomData.checkData.append(count[hoge/2])
            randomData.checkData.sort()
            UserDefaults.standard.set(randomData.checkData, forKey:"")
            if randomData.percentData.isEmpty   {
                randomData.percentData.append(randomData.checkData.count)
            }else{
                randomData.percentData.remove(at: 0)
                randomData.percentData.append(randomData.checkData.count)
            }
            UserDefaults.standard.set(randomData.percentData, forKey: "a")
            print(randomData.percentData)
        }
        
        if isCheck == false && boolcheck()  {
            print(count[hoge/2])
            randomData.checkData.remove(at: counter())
            UserDefaults.standard.set(randomData.checkData, forKey:"")
            if randomData.percentData.isEmpty   {
                randomData.percentData.append(randomData.checkData.count)
            }else{
                randomData.percentData.remove(at: 0)
                randomData.percentData.append(randomData.checkData.count)
            }
            UserDefaults.standard.set(randomData.percentData, forKey: "a")
            print(randomData.percentData)
        }
        UIImpactFeedbackGenerator(style: .medium).impactOccurred()
    }
    
    //removeで消す時に何番目を消すか判断する
    func counter() -> Int {
        var  countcount = 0
        for i in 0..<randomData.checkData.count{
            if count[hoge/2] != randomData.checkData[i] {
                countcount += 1
            }else{
                break
            }
        }
        return countcount
    }
    
    //今までにcheckされていたか判断する
    func boolcheck() -> Bool {
        if randomData.percentData.isEmpty {
            randomData.percentData.append(0)
        UserDefaults.standard.set(randomData.percentData, forKey: "a")
        }
        var countdown = 0
        if hoge <= hogeMax {
            for i in 0..<randomData.percentData[0]{
                if count[hoge/2] == randomData.checkData[i]{
                        countdown += 1
                    }
            }
        }
        if countdown != 0 {
            return true
        }else{
            return false
        }
    }
    
    //表示する時ischeckを判断する
    func isCheckCheck() -> Void {
        if boolcheck() {
            isCheck = true
        }else{
            isCheck = false
        }
    }
    
    func mean() -> Void {
        
        if hoge%2 == 0{
            hoge += 1
        }else{
            hoge = hoge - 1
        }
    }
    
    func next() -> Void {
        if hoge%2 == 0 {
            hoge += 2
        }else{
            hoge += 1
        }
        if hoge == (count.count-1)*2 {
            isEnd = true    //次へボタンが終わりボタンになる
        }
        if hoge > (count.count-1)*2 {
            isShow = false    //スタート画面に戻る
            if randomData.percentData.isEmpty   {
                randomData.percentData.append(randomData.checkData.count)
            }else{
                randomData.percentData.remove(at: 0)
                randomData.percentData.append(randomData.checkData.count)
            }
            UserDefaults.standard.set(randomData.percentData, forKey: "a")
            print(randomData.percentData)
            
        }
    }
    
    func back() -> Void {
        if hoge != 0 && hoge%2 == 0{
            hoge -= 2
        }else if hoge == 1 && hoge%2 == 1{
            hoge = hoge - 1
        }
        else if hoge != 0 && hoge%2 == 1{
            hoge = hoge - 3
        }
    }

}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(isShow:Binding.constant(false)).environmentObject(MakeRandomInt())
        
    }
}

