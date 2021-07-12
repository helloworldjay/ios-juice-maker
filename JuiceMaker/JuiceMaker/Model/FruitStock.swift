//
//  FruitStock.swift
//  JuiceMaker
//
//  Created by Seungjin Baek on 2021/07/05.
//

import Foundation

enum FruitType: CaseIterable {
    case strawberry, banana, kiwi, pineapple, mango
    
    var description: String {
        switch self {
        case .strawberry:
            return "strawberry"
        case .banana:
            return "banana"
        case .kiwi:
            return "kiwi"
        case .pineapple:
            return "pineapple"
        case .mango:
            return "mango"
        }
    }
}

struct FruitStock {
    private let type: FruitType
    private var amount: Int
    private let originFruitAmount = 10
    
    init(type: FruitType) {
        self.type = type
        self.amount = originFruitAmount
    }
    
    func fruitType() -> FruitType {
        return self.type
    }
    
    func fruitAmount() -> Int {
        return self.amount
    }
    
    mutating func increaseAmount(by difference: Int) {
        self.amount += difference
    }
    
    mutating func decreaseAmount(by difference: Int) {
        self.amount -= difference
    }
    
    func hasEnoughAmount(than difference: Int) -> Bool {
        return self.amount >= difference
    }
    
}
