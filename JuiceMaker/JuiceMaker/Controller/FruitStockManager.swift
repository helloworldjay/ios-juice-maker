//
//  FruitStock.swift
//  JuiceMaker
//
//  Created by Seungjin Baek on 2021/03/12.
//

import Foundation


struct FruitStockManager {
    static var fruitStocks: [FruitType : FruitStock] = [.strawberry: FruitStock(type: .strawberry), .banana: FruitStock(type: .banana), .kiwi: FruitStock(type: .kiwi), .mango: FruitStock(type: .mango), .pineapple: FruitStock(type: .pineapple)]
}
