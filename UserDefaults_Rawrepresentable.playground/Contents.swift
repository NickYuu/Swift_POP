//: Playground - noun: a place where people can play

import UIKit

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

struct PreferenceNames {
    
    
}

extension UserDefaults {
    static let userNameKey = PreferenceKey<String>(rawValue: "userName")!
    
    static var userName: String {
        set { UserDefaults.standard[userNameKey] = newValue }
        get { return UserDefaults.standard[userNameKey]! }
    }
}


