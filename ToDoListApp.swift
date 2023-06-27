//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by sarthak sharma on 19/06/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure() 
    }
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
