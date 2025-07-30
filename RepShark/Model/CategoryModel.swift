//
//  CategoryModel.swift
//  RepShark
//
//  Created by Alexej K on 22/07/2025.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
