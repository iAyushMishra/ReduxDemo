//
//  Store.swift
//  ReduxDemo
//
//  Created by Ayush Mishra on 05/09/23.
//

import Foundation

/// Create a store to hold your state and manage actions
class Store: ObservableObject {
    var reducer: Reducer
    @Published var state: State
    
    /**
     Initializes the `Store` class.
     - Parameters:
        - reducer: A closure of type `Reducer` that represents the reducer function.
                The `@escaping` keyword indicates that  it can be stored and used later.
        - state: The optional parameter that allows to initalize store with initial state. If not provided it defaults to empty state
     */
    init(reducer: @escaping Reducer, state: State = State()) {
        self.reducer = reducer
        self.state = state
    }
    
    /**
     Dipatches actions to the store, which will then trigger the store with an initial state.
     It is how you signal that something has occurred in your application that should result in a change to the application's state.
     - Parameter action: Instance of `Action` which represents the action to be dispatched.
     */
    func dispatch(action: Action) {
        state = reducer(state, action)
    }
}
