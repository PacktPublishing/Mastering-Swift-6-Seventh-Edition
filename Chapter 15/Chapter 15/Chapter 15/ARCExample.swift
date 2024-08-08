//
//  ARCExample.swift
//  Chapter 14
//
//  Created by Jon Hoffman on 5/30/24.
//

import Foundation

class MyClass {
    var name = ""
    init(name: String) {
        self.name = name
        print("Initializing class with name \(self.name)")
    }
    deinit {
        print("Releasing class with name \(self.name)")
    }
}

func testARC() {
    var class1ref1: MyClass? = MyClass(name: "One")
    var class2ref1: MyClass? = MyClass(name: "Two")
    var class2ref2: MyClass? = class2ref1
    print("Setting class1ref1 to nil")
    class1ref1 = nil
    print("Setting class2ref1 to nil")
    class2ref1 = nil
    print("Setting class2ref2 to nil")
    class2ref2 = nil

}



