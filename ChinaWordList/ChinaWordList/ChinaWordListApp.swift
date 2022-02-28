//
//  ChinaWordListApp.swift
//  ChinaWordList
//
//  Created by 岩田照太 on 2021/.
//

import SwiftUI

@main
struct ChinaWordListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(MakeRandomInt())
        }
    }
}
