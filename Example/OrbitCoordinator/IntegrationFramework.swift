//
//  IntegrationFramework.swift
//  OrbitCoordinator_Example
//
//  Created by Phincon on 08/08/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import MyTelkomselSuperappFramework
import MyTelkomselSuperappFrameworkIntegration

class IntegratingFramework {
    private let frameworkCoordinator: FrameworkCoordinator?

    init(navigationController: UINavigationController) {
        frameworkCoordinator = FrameworkCoordinator(
            context: SharedContext(
                navigationController: navigationController,
                language: "",
                accessToken: "",
                idToken: ""
            )
        )
    }

    func navigateTo(urlScheme: String) {
        frameworkCoordinator?.invoke(urlScheme: urlScheme)
    }

    func updateLanguage() {
        frameworkCoordinator?.context.language = ""
    }

    deinit {
        debugPrint("IntegratingFramework deint")
    }
}
