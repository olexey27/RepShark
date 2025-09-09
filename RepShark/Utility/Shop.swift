//
//  Shop.swift
//  RepShark
//
//  Created by Alexej K on 09/09/2025.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
