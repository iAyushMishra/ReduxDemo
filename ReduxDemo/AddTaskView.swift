//
//  AddTaskView.swift
//  ReduxDemo
//
//  Created by Ayush Mishra on 05/09/23.
//

import SwiftUI

struct AddTaskView: View {
    
    @State private var name: String = ""
    @EnvironmentObject var store: Store<AppState>
    
    struct Props {
        let tasks: [Task]
        // dispatch
        var onTaskAdded: (Task) -> ()
    }
    
    private func map(state: TaskState) -> Props {
        return Props(tasks: state.tasks, onTaskAdded: { task in
            store.dispatch(action: AddTaskAction(task: task))
        })
    }
    var body: some View {
        let props = map(state: store.state.taskState)
        
        return VStack {
            TextField("Enter Task", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Add") {
                let task = Task(title: self.name)
                props.onTaskAdded(task)
            }
            
            List(props.tasks, id: \.id) { task in
                Text(task.title)
            }
            
            Spacer()
        }.padding()
    }
}


struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        let store = Store(reducer: appReducer, state: AppState())
        return AddTaskView().environmentObject(store)
    }
}
