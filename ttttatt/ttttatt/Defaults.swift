//
//  Defaults.swift
//  ttttatt
//
//  Created by YU on 2016/12/27.
//  Copyright © 2016年 YU. All rights reserved.
//

import Foundation


extension UserDefaults {
    
    subscript(key: PreferenceKey<String>) -> String? {
        set { set(newValue, forKey: key.rawValue) }
        get { return string(forKey: key.rawValue) }
    }
    
    
}

struct PreferenceKey<Type>: RawRepresentable {
    typealias RawValue = String
    
    var rawValue: String
    
    init?(rawValue: PreferenceKey.RawValue) {
        self.rawValue = rawValue
    }
}


extension UserDefaults {
    static let userNameKey = PreferenceKey<String>(rawValue: "userName")!
    
    static var userName: String? {
        set { UserDefaults.standard[userNameKey] = newValue }
        get { return UserDefaults.standard[userNameKey] }
    }
}



extension Notification.Name {
    static let statusChanged = Notification.Name("statusChanged")
}

