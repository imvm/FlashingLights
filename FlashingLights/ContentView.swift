//
//  ContentView.swift
//  FlashingLights
//
//  Created by Ian Manor on 28/01/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Flashing Lights")
                    .bold()
                Spacer()
                NavigationLink(destination: FlashingLightView()) {
                    Text("Start")
                        .bold()
                        .padding()
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .background(Capsule().foregroundColor(.purple))
                }
                Spacer()
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FlashingLightView()
    }
}
