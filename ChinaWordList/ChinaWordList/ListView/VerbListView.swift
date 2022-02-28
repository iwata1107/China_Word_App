//
//  VerbListView.swift
//  ChinaWordList
//
//  Created by 岩田照太 on 2021/.
//

import SwiftUI

struct VerbListView: View {
    
    @EnvironmentObject var randomData : MakeRandomInt
    let word = MakeWordData()
    @State var isCheck = true
    @State var isEnd = false
    //@State var indexhoge:Int
    var body: some View {
        VStack{
            List{
                ForEach(0..<152){ index in
                    HStack{
                        Button(action: {toggle(index: index)}){
                            if boolcheck(index: index) {
                                Image(systemName: "checkmark.square.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .padding()
                            }else{
                                Image(systemName: "square")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .padding()
                            }
                        }
                        Text(word.MakechineseData(int: word.wordCount(int: index)))
                            .font(.title2)
                            .frame(width: 80, height: 70)
                            
                        Text(":")
                            .bold()
                            .font(.title)
                        Text(word.MakejapaneseData(int: word.wordCount(int: index)))
                            .font(.title2)
                            .frame(width: 90, height: 70)
                    }
                   
                }
            }
        }
    }
    
    func toggle(index: Int) -> Void {
        isCheck = !isCheck
        //print(isCheck)
        if isCheck == true && boolcheck(index: index) == false{
            randomData.checkData.append(index)
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
        
        if isCheck == false && boolcheck(index: index)  {
            randomData.checkData.remove(at: counter(index: index))
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
    func counter(index: Int) -> Int {
        var  countcount = 0
        for i in 0..<randomData.checkData.count{
            if index != randomData.checkData[i] {
                countcount += 1
            }else{
                break
            }
        }
        return countcount
    }
    
    //今までにcheckされていたか判断する
    func boolcheck(index: Int) -> Bool {
        if randomData.percentData.isEmpty {
            randomData.percentData.append(0)
        UserDefaults.standard.set(randomData.percentData, forKey: "a")
        }
        var countdown = 0
            for i in 0..<randomData.percentData[0]{
                if index == randomData.checkData[i]{
                        countdown += 1
                    }
            }
        if countdown != 0 {
            return true
        }else{
            return false
        }
    }
}

struct VerbListView_Previews: PreviewProvider {
    static var previews: some View {
        VerbListView().environmentObject(MakeRandomInt())
    }
}
