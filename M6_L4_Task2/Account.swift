//
//  Account.swift
//  M6_L4_Task2
//
//  Created by Bekhruz Hakmirzaev on 02/12/22.
//

import Foundation

struct Account: Codable {
    let holderName: String
    let cardNumber: String
    let accounBalance: String
    let spendingLimit: String
}
