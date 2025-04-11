//
//  Stack.swift
//  Swift-Protocol-Oriented-Programming
//
//  Created by Andrii Vitvitskyi on 11/04/2025.
//

import Foundation

protocol StackProtocol {
    associatedtype E

    mutating func push(item: E)
    mutating func pop() -> E?
    func peek() -> E?
    var count: Int { get }
    var isEmpty: Bool { get }
}

public struct Stack<T>: StackProtocol {

    private var items: [T] = []

    mutating func push(item: T) {
        items.append(item)
    }

    mutating func pop() -> T? {
        items.popLast()
    }

    func peek() -> T? {
        items.last
    }

    var count: Int {
        return items.count
    }

    var isEmpty: Bool {
        return items.isEmpty
    }

}

class TestStack {
    var stringStack: Stack<String> = Stack()
    func testMyStack() {
        stringStack.push(item: "1")
        stringStack.push(item: "2")
        let peekElement = stringStack.peek()
        let popElement = stringStack.pop()
        print(popElement ?? "")
        print(peekElement ?? "")
        print(stringStack)
    }
}
