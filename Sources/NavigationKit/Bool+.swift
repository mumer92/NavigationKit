//
//  Bool+.swift
//  
//
//  Created by Alex Nagy on 26.12.2020.
//

import Foundation

public extension Bool {
    mutating func dismiss() {
        self = false
    }
}

public extension Bool {
    mutating func present() {
        self = true
    }
}
