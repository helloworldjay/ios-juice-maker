//
//  JuiceRecipe.swift
//  JuiceMaker
//
//  Created by Seungjin Baek on 2021/03/12.
//

import Foundation


typealias FruitTypeAndAmount = [(type: FruitType, amount: Int)]

class RecipeBook {

    private let recipes: [JuiceRecipe] = [StrawberryJuice(), BananaJuice(), KiwiJuice(), PineappleJuice(), StrawberryBananaJuice(), MangoJuice(), MangoKiwiJuice()]

    func getJuiceIngredients(of juiceName: JuiceRecipe) -> FruitTypeAndAmount? {
        return recipes.first(where: { $0.name == juiceName.name })?.recipe
    }
}

protocol JuiceRecipe {
    var name: String { get }
    var recipe: FruitTypeAndAmount { get }
}

struct StrawberryJuice: JuiceRecipe {
    var name = JuiceType.strawberry.description
    var recipe: FruitTypeAndAmount {
        return [(FruitType.strawberry, 16)]
    }
}

struct BananaJuice: JuiceRecipe {
    var name = JuiceType.banana.description
    var recipe: FruitTypeAndAmount {
        return [(FruitType.banana, 2)]
    }
}

struct KiwiJuice: JuiceRecipe {
    var name = JuiceType.kiwi.description
    var recipe: FruitTypeAndAmount {
        return [(FruitType.kiwi, 3)]
    }
}

struct PineappleJuice: JuiceRecipe {
    var name = JuiceType.pineapple.description
    var recipe: FruitTypeAndAmount {
        return [(FruitType.pineapple, 2)]
    }
}

struct StrawberryBananaJuice: JuiceRecipe {
    var name = JuiceType.strawberryBanana.description
    
    var recipe: FruitTypeAndAmount {
        return [(FruitType.strawberry, 10), (FruitType.banana, 1)]
    }
}

struct MangoJuice: JuiceRecipe {
    var name = JuiceType.mango.description
    
    var recipe: FruitTypeAndAmount {
        return [(FruitType.mango, 3)]
    }
}

struct MangoKiwiJuice: JuiceRecipe {
    var name = JuiceType.mangoKiwi.description
    
    var recipe: FruitTypeAndAmount {
        return [(FruitType.mango, 2), (FruitType.kiwi, 1)]
    }
}

enum JuiceType {
    case strawberry, banana, pineapple, kiwi, mango, strawberryBanana, mangoKiwi
    
    var description: String {
        switch self {
        case .strawberry:
            return "딸기"
        case .banana:
            return "바나나"
        case .pineapple:
            return "파인애플"
        case .kiwi:
            return "키위"
        case .mango:
            return "망고"
        case .strawberryBanana:
            return "딸바"
        case .mangoKiwi:
            return "망키"
        }
    }
}
