//
//  State.swift
//  ReduxDemo
//
//  Created by Ayush Mishra on 05/09/23.
//

import Foundation

/// Define your application state.
/// This holds all the data your app needs.
struct AppState: ReduxState {
    var counterState = CounterState()
    var taskState = TaskState()
}
