//
//  DetailedAgent.swift
//  ValorantDex
//
//  Created by Marcos Chevis on 29/09/22.
//

import SwiftUI

struct DetailedAgent: View {
    var agent: Agent
    
    init(agent: Agent) {
        self.agent = agent
    }
    
    var body: some View {
        VStack {
            ZStack {
                Image(agent.origin)
                
                CircleImage(agent.name)
                    .frame(width: 200, height: 200)
                    .offset(y: 100)
            }
            .padding(.top, 50)
            .padding(.bottom, 100)
            
            VStack {
                Label {
                    Text(agent.type.rawValue)
                } icon: {
                    Image(agent.type.rawValue)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                }
                
                List(agent.abilities, id: \.self) { ability in
                    
                    Label {
                        Text(ability)
                            .padding(.leading)
                    } icon: {
                        Image(ability)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.black)
                            .frame(width: 50, height: 50)
                    }
                }
                .listStyle(.inset)
                .scrollDisabled(true)
            }
        }
        .ignoresSafeArea(edges: [.top])
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(agent.name)
        .toolbarBackground(.visible, for: .navigationBar)
    }
}

struct DetailedAgent_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailedAgent(agent: Agent(name: "Brimstone",
                                       type: .controller,
                                       origin: "United States",
                                       abilities: ["Incendiary", "Stim Beacon", "Sky Smoke", "Orbital Strike"])
            )
        }
    }
}
