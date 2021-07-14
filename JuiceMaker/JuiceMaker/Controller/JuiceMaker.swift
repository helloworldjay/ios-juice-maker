//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit


class JuiceMaker {
    
    func makeJuiceAlertMessage(juiceType: JuiceRecipe) throws -> UIAlertController {
        let ingredientsNeeded = juiceType.recipe
        for (neededType, neededAmount) in ingredientsNeeded {
            guard var currentFruit = FruitStockManager.fruitStocks[neededType] else { throw JuiceMakerError.cannotFindFruitStockError }
            if hasEnoughFruitAmount(currentAmount: currentFruit.fruitAmount(), amountneeded: neededAmount) {
                FruitStockManager.fruitStocks[neededType]?.decreaseAmount(by: neededAmount)
            } else {
                let failAlert = UIAlertController(title: "알림", message: "재료가 모자라요. 재고를 수정할까요?", preferredStyle: .alert)
                let defaultAction =  UIAlertAction(title: "아니오", style: UIAlertAction.Style.default)
                failAlert.addAction(defaultAction)
                let cancelAction = UIAlertAction(title: "예", style: UIAlertAction.Style.cancel)
                failAlert.addAction(cancelAction)
                return failAlert
            }
        }
        let successAlert = UIAlertController(title: "알림", message: "\(juiceType.name)쥬스가 나왔습니다! 맛있게 드세요!", preferredStyle: .alert)
        let defaultAction =  UIAlertAction(title: "확인", style: UIAlertAction.Style.default)
        successAlert.addAction(defaultAction)
        return successAlert
    }
    
    func hasEnoughFruitAmount(currentAmount: Int, amountneeded: Int) -> Bool {
        return currentAmount >= amountneeded
    }
}
