//
//  JuiceMaker - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var strawberryAmount: UILabel!
    @IBOutlet weak var bananaAmount: UILabel!
    @IBOutlet weak var pineappleAmount: UILabel!
    @IBOutlet weak var kiwiAmount: UILabel!
    @IBOutlet weak var mangoAmount: UILabel!
    
    @IBAction func moveToStockManagePage(_ sender: UIBarButtonItem) {
        let stockManager = self.storyboard!.instantiateViewController(identifier: "stockManager")
        
        self.present(stockManager, animated: true)
    }
    
    var juiceMaker = JuiceMaker()
    
    @IBAction func strawberryBananaJuiceOrder(_ sender: UIButton) {
        makeAlert(with: StrawberryBananaJuice())
    }
    
    @IBAction func mangoKiwiJuiceOrder(_ sender: UIButton) {
        makeAlert(with: MangoKiwiJuice())
    }
    
    @IBAction func strawberryJuiceOrder(_ sender: UIButton) {
        makeAlert(with: StrawberryJuice())
    }
    
    @IBAction func bananaJuiceOrder(_ sender: UIButton) {
        makeAlert(with: BananaJuice())
    }
    
    @IBAction func pineappleJuiceOrder(_ sender: UIButton) {
        makeAlert(with: PineappleJuice())
    }
    
    @IBAction func kiwiJuiceOrder(_ sender: UIButton) {
        makeAlert(with: KiwiJuice())
    }
    
    @IBAction func mangoJuiceOrder(_ sender: UIButton) {
        makeAlert(with: MangoJuice())
    }
    
    func makeAlert(with juiceType: JuiceRecipe) {
        let alert = try? juiceMaker.makeJuiceAlertMessage(juiceType: juiceType)
        if let alert = alert { self.present(alert, animated: false) }
        FruitStockManager.fruitStocks.forEach { updateFruitAmountLabel(fruitStock: $1) }
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

