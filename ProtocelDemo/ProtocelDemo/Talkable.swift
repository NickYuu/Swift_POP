//
//  Talkable.swift
//  ProtocelDemo
//
//  Created by Tsung Han Yu on 2017/3/27.
//  Copyright © 2017年 Tsung Han Yu. All rights reserved.
//

protocol Talkable {
    func talk()
}


extension Talkable {
    func talk() {
        print("Hello Protocol")
    }
}

class Persom : Talkable {
    
}
