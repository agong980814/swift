//: Playground - noun: a place where people can play

import UIKit

// On app Ctivation

func application(application: UIApplication,
                 performActionForShortCutItem shortcutitem: UIApplicationShortcutItem,
                 completionHandler: Bool -> Void){
    let didHandle: Bool = /* handle the quick action using shortcutItem */
    completionHandler(didHandle)
}

func application(application: UIApplication,
                 didFinishLaunchWithOptions lauchOptions: [NSObject: AnyObject]?) -> Bool {
    var performAdditionalHandling = true
    if let shortcutItem = launchOptions?[UIApplicationLauchOptionShortcutItemKey]
        as? UIApllicationShortcutItem {
        /* handle the quick action using shortcutItem */
        performAdditionalHandling = false
    }
    return performAdditionalHandling
}
