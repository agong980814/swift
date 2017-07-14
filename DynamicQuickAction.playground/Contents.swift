//: Playground - noun: a place where people can play

import UIKit
import Foundation

// Using a contact for the icon

let contactName = "Lucis"
var contactIcon: UIApplicationShortcut? = nil

// Make sure to request access to the use's contacts first
if CNContactStore.authorizationStatus(for: .contancts) == .authorized {
    // assuming we have the permission
    let predicate = CNContact.predicateForContacts(matchingName: contactName)
    let contacts = try? CNContactStore().unifiedContacts(matching: predicate, keysToFetch: [])
    // if we get at least one match
    if let contact = contacts?.first {
        contactIcon = UIApplicationShortcutIcon(contact: contact)
    }
}
// do not have permission or do not find a match
// fallback
let icon = contactIcon ?? UIApplicationshortcutIcon(type: .message)

// Creating and registering
let type = "com.company.cpp.sendChatTo"
let subtitle = "Send a chat"
// pass those to shortcut item initializer
let shortcutItem1 = UIApllicationShortcutItem(type: type, localizedTitle: contactName,
                                              localizedSubtitle: subtitle, icon: icon)
let shortcutItem2 = UIApllicationShortcutItem(type: type, localizedTitle: contactName,
                                              localizedSubtitle: subtitle, icon: icon)
let shortcutItem3 = UIApllicationShortcutItem(type: type, localizedTitle: contactName,
                                              localizedSubtitle: subtitle, icon: icon)

// Repeat as needed for any additional dynamic quick actions...

let shortcutItems = [shortcutItem1, shortcutItem2, shortcutItem3]

// Register the dynamic quick actions to display on the home screen
application.shortcutItems = shortcutItems