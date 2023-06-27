//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by sarthak sharma on 19/06/23.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

// View Model for signle to do list item view(each row in item list)

class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
    
