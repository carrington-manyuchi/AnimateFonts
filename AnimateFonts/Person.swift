//
//  Person.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/28.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let hobby: String
    let hobbyImage: String?
}
