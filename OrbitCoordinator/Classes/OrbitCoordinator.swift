//
//  OrbitCoordinator.swift
//  Pods
//
//  Created by Phincon on 08/08/23.
//

import Foundation
import MyTelkomselSuperappFrameworkIntegration
import UIKit
import React

public final class OrbitCoordinator: Coordinator {
    public var miniappCoordinators = [Coordinator]()
    private let context: Context
    
    public init(context: MyTelkomselSuperappFrameworkIntegration.Context) {
        self.context = context
    }
    
    public func invoke(urlScheme: String) {
        if let appScreen = OrbitAppScreen.provideAppScreen(urlScheme: urlScheme){
            switch appScreen {
            case .movieToOrbitScreen:
                navigateToOrbitApp()
            }
        }
    }
    
    private func navigateToOrbitApp(){
        guard let jsBundleLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle") else { return }
        let data:NSDictionary = [:];
        let rootView = RCTRootView(
        bundleURL: jsBundleLocation,
        moduleName: "orbitRNApp",
        initialProperties: data as [NSObject : AnyObject],
        launchOptions: nil)
        let viewController = UIViewController()
        viewController.view = rootView
        context.navigationController.pushViewController(viewController, animated: true)
    }
}

