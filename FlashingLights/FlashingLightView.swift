//
//  FlashingLightView.swift
//  FlashingLights
//
//  Created by Ian Manor on 08/02/21.
//

import SwiftUI

struct FlashingLightView: View {
    @ObservedObject var viewModel = FlashingLightViewModel()

    var body: some View {
        viewModel.color.ignoresSafeArea(.all)
    }
}
