import UIKit

//The goal of this exercise is to extend my linked list class with a new method that returns the node at the mid-point of
//O(n) complexity
//Traversing the list twice,
//One linker goes therough one node at a time and the other one goes through two nodes at a time.
//Check out the alphabet function used by this man on his previous video
// To be combined with a more refined linked list

class Node<T> {
    var value: T
    var next: Node?
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    
    var head: Node<T>?
    var tail: Node<T>?
    
    var middleNode: Node<T>? {
    
        var singleSpeedNode = head
        var doubleSpeedNode = head
        
        while doubleSpeedNode != nil && doubleSpeedNode?.next != nil {
            singleSpeedNode = singleSpeedNode?.next // moves up one node when conditions are met
            doubleSpeedNode = doubleSpeedNode?.next?.next // moves up two nodes when conditions are met
    }
        return singleSpeedNode
    }
}

