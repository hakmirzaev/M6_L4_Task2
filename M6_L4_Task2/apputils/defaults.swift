//
//  defaultsByObservedObject.swift
//  M6_L4_Task2
//
//  Created by Bekhruz Hakmirzaev on 02/12/22.
//

import Foundation

class Defaults: ObservableObject {
    @Published var account: Account? {
        didSet{
            storeAccount(account: account ?? Account(holderName: "no", cardNumber: "no", accounBalance: "no", spendingLimit: "no"))
        }
    }
    
    init(){
        self.account = loadAccount()
    }
    
    func storeAccount(account: Account){
        let encoder = JSONEncoder()
        if let encodedAccount = try? encoder.encode(account) {
            UserDefaults.standard.set(encodedAccount, forKey: "account")
        }
    }
    func loadAccount() -> Account! {
        if let savedAccountData = UserDefaults.standard.object(forKey: "account") as? Data{
            let decoder = JSONDecoder()
            if let savedAccount = try? decoder.decode(Account.self, from: savedAccountData) {
                return savedAccount
            }
        }
        return nil
    }
}
