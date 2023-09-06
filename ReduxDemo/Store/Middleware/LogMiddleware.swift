//
//  LogMiddleware.swift
//  ReduxDemo
//
//  Created by Ayush Mishra on 06/09/23.
//

import Foundation


/*
 *REDUX THUNK*
 It is a middleware library used with Redux for state management
 Redux primarily works with SYNCHRONOUS Actions,
 but for scenarios in which you want to dispatch asynchronous actions like API calls, timers then use Reduc Thunk
 
 Working of Redux Thunk:
 1. Middleware - 'redux-thunk' is a middleware that you can add to your Redux store,
                Middleware sits between the dispatching of the action and the moment it reaches the reducer.
                It intercepts actions before they reach the reducer, allowing to modify or delay them.
 
 2. Thunk Function - Instead of dispatching plain action object you can dispatch function known as 'Thunk'.
                    'Thunk' is a function that takes 'dispatch' and 'getState' as its arguments.
                    Inside the thunk, you can perform async operation or any logic you need.
 
 3. Delayed Dispatch - Within the thunk function, you can decide when to dispatch the actual action object.
                       This means that you can dispatch actions at a later time, often an asynchronous operation has completed.
 
 */


// This middleware is for logging the actions.
func logMiddleWare() -> Middleware<AppState> {
    return { state, action, dispatch in
            print("[Log Middleware]")
    }
}

