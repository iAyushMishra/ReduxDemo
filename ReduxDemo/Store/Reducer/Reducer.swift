//
//  Reducer.swift
//  ReduxDemo
//
//  Created by Ayush Mishra on 05/09/23.
//

import Foundation
/*
    Reducers are the pure functions that take current state and
    actions as input and return a new state based on these inputs.
 
    It defines how the state should change in response to various actions.
 
 */

typealias Reducer = (_ state: State,_ action: Action) -> State

///
/// Create reducers to specify how the state should change in response to actions.
/// This method take the current state and an action and return a new state
/// 
func reducer(_ state: State,_ action: Action) -> State {
    var state = state
    
    switch action {
        case _ as IncrementAction:
            state.counter += 1
        case _ as DecrementAction:
            state.counter -= 1
        case let action as AddAction:
            state.counter += action.value
        default:
            break
    }
    
    return state
}
