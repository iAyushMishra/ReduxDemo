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

// make Reducer generic to make Reducer of a particular state.
typealias Reducer<State: ReduxState> = (_ state: State,_ action: Action) -> State

///
/// Create reducers to specify how the state should change in response to actions.
/// This method take the current state and an action and return a new state
/// 
