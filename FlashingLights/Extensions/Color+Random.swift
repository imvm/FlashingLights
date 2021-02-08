//
//  Color+Random.swift
//  FlashingLights
//
//  Created by Ian Manor on 08/02/21.
//

import SwiftUI

extension Color {
    static var random: Self {
        .init(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
    }
}
