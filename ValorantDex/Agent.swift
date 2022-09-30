//
//  Agent.swift
//  ValorantDex
//
//  Created by Marcos Chevis on 29/09/22.
//

import Foundation

struct Agent: Identifiable {
    var id: String {
        name
    }
    
    let name: String
    let type: AType
    let origin: String
    let abilities: [String]
}


enum AType: String {
    case controller = "Controller"
    case sentinel = "Sentinel"
    case initiator = "Initiator"
    case duelist = "Duelist"
}
