//
//  IncrementMiddleware.swift
//  ReduxDemo
//
//  Created by Ayush Mishra on 06/09/23.
//

import Foundation

func incrementMiddleware() -> Middleware<AppState> {
    return { state, action, dispatch in
        switch action {
            case _ as IncrementActionAsync:
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    dispatch(IncrementAction())
                }
            default:
                break
        }
    }
}
