//
//  ReduxDemoApp.swift
//  ReduxDemo
//
//  Created by Ayush Mishra on 06/08/23.
//

import SwiftUI

@main
struct ReduxDemoApp: App {
    var body: some Scene {
        /*
         Helps to create a Global store.
         This allows various parts of SwiftUI Application to read state from the store
         and dispatch actions to modify the store ensuring a centralized
         and predictable state management system based on the principles of Redux.
         
         
         Here's a quick summary of how this works:
         * You create the store at the app level.
         * You inject the store into the environment of the root view (ContentView).
         * Any child view within ContentView or its descendants can access and observe the store because it's in the environment.
         */
        let store = Store(reducer: reducer)
        WindowGroup {
            ContentView().environmentObject(store)
        }
    }
}
