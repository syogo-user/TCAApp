//
//  AddToCartDomain.swift
//  TCAApp
//
//  Created by 小野寺祥吾 on 2023/06/17.
//

import SwiftUI
import ComposableArchitecture

struct AddToCartDomain {
    struct State: Equatable {
        var count = 0
    }

    enum Action: Equatable {
        case didTapPlusButton
        case didTapMinusButton
    }

    struct Environment {

    }

    static let reducer = Reducer<State, Action, Environment> { state, action, environment in
        switch action {
        case .didTapPlusButton:
            state.count += 1
            return Effect.none
        case .didTapMinusButton:
            state.count -= 1
            return Effect.none
        }
    }
}
