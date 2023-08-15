//
//  IntegrationFramework.swift
//  OrbitCoordinator
//
//  Created by Phincon on 15/08/23.
//

import Foundation
import UIKit
import MyTelkomselSuperappFramework
import MyTelkomselSuperappFrameworkIntegration

public final class IntegratingFramework {
    private let frameworkCoordinator: FrameworkCoordinator?

    public init(navigationController: UINavigationController) {
        frameworkCoordinator = FrameworkCoordinator(
            context: SharedContext(
                navigationController: navigationController,
                language: "",
                accessToken: "",
                idToken: ""
            )
        )
    }

    public func navigateTo(urlScheme: String) {
        frameworkCoordinator?.invoke(urlScheme: urlScheme)
    }

    public func updateLanguage() {
        frameworkCoordinator?.context.language = ""
    }

    deinit {
        debugPrint("IntegratingFramework deint")
    }
}
