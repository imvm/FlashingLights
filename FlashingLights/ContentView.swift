//
//  ContentView.swift
//  FlashingLights
//
//  Created by Ian Manor on 28/01/21.
//

import SwiftUI

extension Color {
    static var random: Self {
        .init(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
    }
}

class ColorViewModel: ObservableObject {
    @Published var color: Color = .random
    var timer: Timer!

    init() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.color = Color.random
        })
        timer.fire()
    }
}

struct ContentView: View {
    @ObservedObject var viewModel = ColorViewModel()

    var body: some View {
        viewModel.color.ignoresSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
