//
//  OOPTaggedData.swift
//  Swift-Protocol-Oriented-Programming
//
//  Created by Andrii Vitvitskyi on 11/04/2025.
//

import Foundation

class OOPTaggedData {
    var tag: String
    var data: Data

    init(tag: String, data: Data) {
        self.tag = tag
        self.data = data
    }
}

class PersistentTaggedData: OOPTaggedData {
    func persist(to url: URL) throws {
        try self.data.write(to: url)
    }

    convenience init(tag: String, contentOf url: URL) throws {
        let data = try Data(contentsOf: url)
        self.init(tag: tag, data: data)
    }
}

class TaggedDataWithEncoding: OOPTaggedData {
    var base64EncodedString: String {
        data.base64EncodedString()
    }
}

// Multiple inheritance from classes 'PersistentTaggedData' and 'TaggedDataWithEncoding'
//class PersistentBase64Encoded: PersistentTaggedData, TaggedDataWithEncoding {
//
//}

// We cannot inherite from more than one class

// Inheritance from non-protocol type 'PersistentTaggedData'
//struct Tagged: PersistentTaggedData {
//
//}

// Value types cannot inherite


// Conclusion: To solve these problems we return to God class.
