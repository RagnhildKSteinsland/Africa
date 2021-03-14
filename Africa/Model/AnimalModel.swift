//
//  AnimalModel.swift
//  Africa
//
//  Created by Ragnhild Kjellevold Steinsland on 14/03/2021.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
