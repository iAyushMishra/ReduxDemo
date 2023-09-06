//
//  CounterReducer.swift
//  ReduxDemo
//
//  Created by Ayush Mishra on 05/09/23.
//

import Foundation

///
/// Create reducers to specify how the state should change in response to actions.
/// This method take the current state and an action and return a new state
///
func counterReducer(_ state: CounterState,
                    _ action: Action) -> CounterState {
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
    
    print(state)
    return state
}
