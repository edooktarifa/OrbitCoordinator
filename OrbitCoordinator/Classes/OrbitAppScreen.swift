//
//  OrbitAppScreen.swift
//  OrbitCoordinator
//
//  Created by Phincon on 08/08/23.
//

import Foundation

enum OrbitScreen {
    case movieToOrbitScreen
}

// TODO: Error handling
enum OrbitAppScreen {
    static func provideAppScreen(urlScheme: String) -> OrbitScreen? {
        let path = urlScheme.split(separator: "/")
        if path.first == "content_details" {
            return .movieToOrbitScreen
        }
        return nil
    }
}
