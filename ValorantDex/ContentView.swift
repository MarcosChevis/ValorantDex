//
//  ContentView.swift
//  ValorantDex
//
//  Created by Marcos Chevis on 29/09/22.
//

import SwiftUI

struct ContentView: View {
    var agents: [Agent]
    
    init(agents: [Agent]) {
        self.agents = agents
    }
    
    var body: some View {
        VStack {
            List(agents) { agent in
                NavigationLink {
                    DetailedAgent(agent: agent)
                } label: {
                    Label {
                        Text(agent.name)
                            .padding(.leading)
                    } icon: {
                        Image(agent.name)
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(agents: [
                Agent(name: "Brimstone",
                      type: .controller,
                      origin: "United States",
                      abilities: ["Incendiary", "Stim Beacon", "Sky Smoke", "Orbital Strike"])
            ]
            )
        }
    }
}
