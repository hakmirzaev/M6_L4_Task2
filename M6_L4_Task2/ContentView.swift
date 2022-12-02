//
//  ContentView.swift
//  M6_L4_Task2
//
//  Created by Bekhruz Hakmirzaev on 02/12/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var defaults = Defaults()
    init(){
        print(defaults.account)
        let account = Account(holderName: "Humo Card", cardNumber: "9860", accounBalance: "165,000", spendingLimit: "100,000")
        defaults.account = account
        print(defaults.account)
    }
   var body: some View {
        Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
