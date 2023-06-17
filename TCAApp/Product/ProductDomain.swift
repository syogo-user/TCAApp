//
//  ProductDomain.swift
//  TCAApp
//
//  Created by 小野寺祥吾 on 2023/06/17.
//

import SwiftUI
import ComposableArchitecture

struct ProductDomain {
    struct State: Equatable {
        let product: Product
        var addToCartState = AddToCartDomain.State()
    }

    enum Action: Equatable {
        case addToCart(AddToCartDomain.Action)

    }

    struct Environment {

    }

    static let reducer = Reducer<State, Action, Environment>.combine(
        .init { state, action, environment in
            switch action {
            case .addToCart(.didTapPlusButton):
                return .none
            case .addToCart(.didTapMinusButton):
                state.addToCartState.count = max(0, state.addToCartState.count)
                return .none
            }
        })
}
