//
//  TCAAppApp.swift
//  TCAApp
//
//  Created by 小野寺祥吾 on 2023/06/17.
//

import SwiftUI
import ComposableArchitecture
@main
struct TCAAppApp: App {
    var body: some Scene {
        WindowGroup {
            ProductCell(
                store: Store(initialState: ProductDomain.State(
                    product: Product.sample[0]
                ), reducer: ProductDomain.reducer, environment: ProductDomain.Environment())
            )
        }
    }
}
