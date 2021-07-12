//
//  FruitStock.swift
//  JuiceMaker
//
//  Created by Seungjin Baek on 2021/03/12.
//

import Foundation


final class FruitStockManager {
    var fruitStocks: [FruitStock] = FruitType.allCases.map { FruitStock(type: $0) }
    
    func currentFruitStock(byType type: FruitType) -> FruitStock? {
        return fruitStocks.first(where: { $0.fruitType() == type })
    }
    
    func changeAmount() {
        
    }
}
