//
//  ContentView.swift
//  ReduxDemo
//
//  Created by Ayush Mishra on 06/08/23.
//

import SwiftUI

struct ContentView: View {
    
    /// This property is used to inject the store into your SwiftUi view.
    /// This is done at a higher level in your SwiftUI App,
    /// so the store becomes available to all that need access to it.
    @EnvironmentObject var store: Store
    
    
    /// Type to represent a subset of your app state.
    /// Used to store the relevant portion of the state that your view needs.
    struct Props{
        let counter: Int
        let onIncrement: () -> Void
        let onDecrement: () -> Void
        let onAdd: (Int) -> Void
    }
    
    /*
     This method take the global App State as an argument and maps to `Props`
     It helps to connect global app state to your local view properties.
     When the global state changes, only the relevant part of your view that depends on that state ( in this case Text displaying counter) will be updated, providing a reactive way to manage and display app state
     
     Responsible for taking in state and dispaching different actions.
     */
    private func map(state: State) -> Props {
        Props(counter: state.counter) {
            store.dispatch(action: IncrementAction())
        } onDecrement: {
            store.dispatch(action: DecrementAction())
        } onAdd: {
            store.dispatch(action: AddAction(value: $0))
        }

    }
    var body: some View {
        let props = map(state: store.state)
        
        VStack {
            Text("\(props.counter)")
                .padding()
            
            Button("Increment") {
                props.onIncrement()
            }
            
            Button("Decrement") {
                props.onDecrement()
            }
            
            Button("Add 100") {
                props.onAdd(100)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        let store = Store(reducer: reducer)
        ContentView().environmentObject(store)
    }
}
