//
//  Prefix.swift
//  SwiftAxiom RDF SerializationMetadata
//  © 2026 Dylan Umsted <dylan@umsted.org>
//

/// Represents a prefix used in certain serializations of RDF to allow for concise reuse of base IRIs.
public struct Prefix {
    /// The identifier that holds the place of the full base IRI.
    public let prefix: String

    /// The base IRI represented by the prefix ``identifier``.
    public let iri: String

    public init(_ prefix: String, iri: () -> String) {
        self.prefix = prefix
        self.iri = iri()
    }
}
