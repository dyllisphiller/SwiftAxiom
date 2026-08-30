//
//  Base.swift
//  SwiftAxiom / RDF / SerializationMetadata
//
//  Created on 2026-08-28 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

/// Represents the IRI upon which relative IRIs should be based.
///
/// Some serializations take only a single base that applies to the entire document. Others apply only to statements
/// made after a base declaration.
///
/// - Note: Neither ``Base/init(_:)`` nor ``Base/init(iri:)`` validate IRI bases.
/// - Note: IRIs encompass more than HTTP schemes; the behavior of using a URN as a base is undefined and is currently
///         unsupported.
public struct Base {
    /// The IRI upon which relative IRIs should be based.
    public let iri: String

    /// Creates a ``Base`` from a `String`.
    public init(_ iri: String) {
        self.iri = iri
    }

    /// Creates a ``Base`` using a closure.
    public init(iri: () -> String) {
        self.iri = iri()
    }
}
