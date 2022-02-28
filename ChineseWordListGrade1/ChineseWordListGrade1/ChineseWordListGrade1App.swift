//
//  ChineseWordListGrade1App.swift
//  ChineseWordListGrade1
//
//  Created by 岩田照太 on 2021/05/01.
//

import SwiftUI

@main
struct ChineseWordListGrade1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(MakeRandomInt())
        }
    }
}
