//
//  AppReducer.swift
//  ReduxDemo
//
//  Created by Ayush Mishra on 05/09/23.
//

import Foundation

// This reducer will contain other reducer
func appReducer(_ state: AppState,_ action: Action) -> AppState {
    var state = state
    // This is going to return an updated state of `CounterState` which is later assigned to `AppState` `counterState`
    state.counterState = counterReducer(state.counterState, action)
    
    state.taskState = taskReducer(state.taskState, action)
    return state
}
