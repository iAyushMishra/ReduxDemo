//
//  ActionImpl.swift
//  ReduxDemo
//
//  Created by Ayush Mishra on 05/09/23.
//

import Foundation

/// Create different types that conform to `Action` to represent various actions that app can take.

struct IncrementAction: Action {

}

struct DecrementAction: Action {

}

struct AddAction: Action {
    let value: Int
}
