//
//  StockManagerViewController.swift
//  JuiceMaker
//
//  Created by Seungjin Baek on 2021/07/12.
//

import UIKit

class StockManagerViewController: UIViewController {
    
    @IBOutlet weak var strawberryAmountChanger: UIStepper!
    @IBOutlet weak var bananaAmountChanger: UIStepper!
    @IBOutlet weak var pineappleAmountChanger: UIStepper!
    @IBOutlet weak var kiwiAmountChanger: UIStepper!
    @IBOutlet weak var mangoAmountChanger: UIStepper!
    
    @IBOutlet weak var strawberryAmount: UILabel!
    @IBOutlet weak var bananaAmount: UILabel!
    @IBOutlet weak var pineappleAmount: UILabel!
    @IBOutlet weak var kiwiAmount: UILabel!
    @IBOutlet weak var mangoAmount: UILabel!
    
    @IBAction func closeStockManager(_ sender: UIBarButtonItem) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FruitStockManager.fruitStocks.forEach { updateFruitAmountLabel(fruitStock: $1) }
    }
    
    func updateFruitAmountLabel(fruitStock: FruitStock) {
        switch fruitStock.fruitType() {
        case .strawberry:
            self.strawberryAmount.text = String(fruitStock.fruitAmount())
        case .banana:
            self.bananaAmount.text = String(fruitStock.fruitAmount())
        case .kiwi:
            self.kiwiAmount.text = String(fruitStock.fruitAmount())
        case .pineapple:
            self.pineappleAmount.text = String(fruitStock.fruitAmount())
        case .mango:
            self.mangoAmount.text = String(fruitStock.fruitAmount())
        }
    }
    
}
