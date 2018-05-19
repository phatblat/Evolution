//
//  AppDelegate.swift
//  Evolution
//
//  Created by Ben Chatelain on 5/12/18.
//  Copyright © 2018 Jack Chatelain. All rights reserved.
//

import Crashlytics
import Fabric
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        Fabric.with([Crashlytics.self])
        return true
    }
}
