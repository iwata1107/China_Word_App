//
//  ContentView.swift
//  MakeWordListArray
//
//  Created by 岩田照太 on 2021/
//

import SwiftUI

struct ContentView: View {
    
    @State var csvArr = [String]()
    @State var num = [String]()
    @State var chinese = [String]()
    @State var pin = [String]()
    @State var japanese = [String]()
    //@State var WordBook:Dictionary<String,String> = [:]
    @State var selection:String = ""
    @State var showPicker = false
    @State var str:String
    
    var body: some View {
        VStack{
            Button(action: {
                var count = 0
                //var str = ""
                while count < num.count {
                    str = String(count)
                   
                    //print("\"" + chinese[count] + "\",", terminator: "")
                    print("\"" + num[count] + "\",", terminator: "")
                    //print(str + ",", terminator: "")
                    count = count + 1
                }
                
            }){
                Text("Make")
            }
        }
        .onAppear(
            perform: {
                let url = Bundle.main.path(forResource: "capital", ofType: "csv")
                
                do {
                    
                    let csvString = try String(contentsOfFile: url!, encoding: String.Encoding.utf8)
 
                    csvArr = csvString.components(separatedBy: .newlines)
                    csvArr.removeLast()
                    
                    var count = 0
                    
                    for sstr in csvArr  {
                        count += 1
                        
                        let arrayPart:[String] = sstr.components(separatedBy: ",")
                        
                        if(count != csvArr.count){
                            num.append(arrayPart[0])
                            chinese.append(arrayPart[1])
                        }
                    }
                } catch let error as NSError {
                    print("Error: \(error)")
                    return
                }
                
                
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(str: "")
    }
}
