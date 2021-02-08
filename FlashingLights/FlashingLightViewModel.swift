//
//  FlashingLightViewModel.swift
//  FlashingLights
//
//  Created by Ian Manor on 08/02/21.
//

import Foundation
import SwiftUI

class FlashingLightViewModel: ObservableObject {
    @Published var color: Color = .random
    var timer: Timer!

    init() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.color = Color.random
        })
        timer.fire()
    }
}
