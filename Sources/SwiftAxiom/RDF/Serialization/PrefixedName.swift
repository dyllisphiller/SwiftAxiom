//
//  PrefixedName.swift
//  SwiftAxiom / RDF / Serialization
//
//  Created on 2026-08-30 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

public struct PrefixedName: Codable, Equatable, Sendable {
    public let prefix: Prefix
    public let localName: String

    public init(_ prefix: Prefix, _ localName: String) {
        self.prefix = prefix
        self.localName = localName
    }
}
