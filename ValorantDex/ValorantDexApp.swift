//
//  ValorantDexApp.swift
//  ValorantDex
//
//  Created by Marcos Chevis on 29/09/22.
//

import SwiftUI

@main
struct ValorantDexApp: App {
    
    var agents: [Agent] = [
        Agent(name: "Brimstone", type: .controller, origin: "United States", abilities: ["Incendiary",
                                                                                         "Stim Beacon",
                                                                                         "Sky Smoke",
                                                                                         "Orbital Strike"]),
        Agent(name: "Viper", type: .controller, origin: "United States", abilities: ["Snake Bite",
                                                                                     "Poison Cloud",
                                                                                     "Toxin Screen",
                                                                                     "Viper's Pit"]),
        Agent(name: "Omen", type: .controller, origin: "Unknown", abilities: ["Shrouded",
                                                                              "Paranoia",
                                                                              "Dark Cover",
                                                                              "From the Shadows"])
        
    
    ]
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(agents: agents)
            }
        }
    }
}
