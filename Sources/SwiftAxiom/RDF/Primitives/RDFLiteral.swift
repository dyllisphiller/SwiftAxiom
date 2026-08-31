//
//  RDFLiteral.swift
//  SwiftAxiom / RDF / Primitives
//
//  Created on 2026-08-30 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

public struct RDFLiteral: Codable, Hashable, Sendable {
    public let value: String
    public let datatype: IRI
    public let language: String?

    public init(_ value: String) {
        self.value = value
        self.datatype = IRI(string: "http://www.w3.org/2001/XMLSchema#string")
        self.language = nil
    }

    public init(value: String, datatype: IRI) {
        self.value = value
        self.datatype = datatype
        self.language = nil
    }

    public init(value: String, language: String) {
        self.value = value
        self.datatype = IRI(string: "http://www.w3.org/1999/02/22-rdf-syntax-ns#langString")
        self.language = language
    }
}
