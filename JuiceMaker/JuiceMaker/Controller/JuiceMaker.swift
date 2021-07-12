//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit


class JuiceMaker {
    var fruitStockManager: FruitStockManager
    
    init(manager: FruitStockManager) {
        self.fruitStockManager = manager
    }
    
    func makeJuiceAlertMessage(juiceType: JuiceRecipe) throws -> UIAlertController {
        let ingredientsNeeded = juiceType.recipe
        let defaultAction =  UIAlertAction(title: "확인", style: UIAlertAction.Style.default)
        for (neededType, neededAmount) in ingredientsNeeded {
            guard var currentFruit = fruitStockManager.currentFruitStock(byType: neededType) else { throw JuiceMakerError.cannotFindFruitStockError }
            if hasEnoughFruitAmount(currentAmount: currentFruit.fruitAmount(), amountneeded: neededAmount) {
                currentFruit.decreaseAmount(by: neededAmount)
            } else {
                let failAlert = UIAlertController(title: "알림", message: "재료가 모자라요. 재고를 수정할까요?", preferredStyle: .alert)
                failAlert.addAction(defaultAction)
//                let cancelAction = UIAlertAction(title: "cancel", style: UIAlertAction.Style.cancel, handler: nil)
//                let destructiveAction = UIAlertAction(title: "destructive", style: UIAlertAction.Style.destructive){(_) in }
//                successAlert.addAction(defaultAction)
                return failAlert
            }
        }
        let successAlert = UIAlertController(title: "알림", message: "\(juiceType.name)쥬스가 나왔습니다! 맛있게 드세요!", preferredStyle: .alert)
        successAlert.addAction(defaultAction)
        return successAlert
    }
    
    func hasEnoughFruitAmount(currentAmount: Int, amountneeded: Int) -> Bool {
        return currentAmount >= amountneeded
    }
}
