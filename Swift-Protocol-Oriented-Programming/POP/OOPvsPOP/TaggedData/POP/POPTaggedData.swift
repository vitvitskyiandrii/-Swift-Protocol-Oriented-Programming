//
//  POPTaggedData.swift
//  Swift-Protocol-Oriented-Programming
//
//  Created by Andrii Vitvitskyi on 11/04/2025.
//

import Foundation

protocol Taggable {
    var tag: String { get set }
    var data: Data { get set }

    init(tag: String, data: Data)
}

protocol TaggedPersistable: Taggable {
    init(tag: String, contentOf url: URL) throws
    func persist(to url: URL) throws
}

extension TaggedPersistable {
    init(tag: String, contentOf url: URL) throws {
        let data = try Data(contentsOf: url)
        self.init(tag: tag, data: data)
    }

    func persist(to url: URL) throws {
        try self.data.write(to: url)
    }
}

protocol TaggedEncodable: Taggable {
    var base64EncodedString: String { get }
}

extension TaggedEncodable {
    var base64EncodedString: String {
        data.base64EncodedString()
    }
}

class MyTaggedData: Taggable {

    var tag: String
    var data: Data

    required init(tag: String, data: Data) {
        self.tag = tag
        self.data = data
    }
}

let taggedData = MyTaggedData(tag: "tag", data: Data(repeating: 0, count: 1))

struct PersistableTaggedData: TaggedPersistable, TaggedEncodable {
    var tag: String
    var data: Data
}

class MyClass {
    func performTaggedData() {
        let persistableTaggedData = PersistableTaggedData(tag: "tag-1", data: Data(repeating: 0, count: 1))
        let documentURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let url = documentURL.appendingPathComponent("myData")
        try? persistableTaggedData.persist(to: url)

        _ = persistableTaggedData.base64EncodedString
    }
}

//     Protocols
// - No side effects
// - Flexible design
// - Works with referance and value types

