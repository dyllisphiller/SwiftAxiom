//
//  Prefix.swift
//  SwiftAxiom / RDF / Serialization
//
//  Created on 2026-08-28 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

/// Represents a prefix used in certain serializations of RDF to allow for concise reuse of base IRIs.
public struct Prefix: Codable, Hashable, Sendable {
    /// The identifier that holds the place of the full base IRI, without a trailing colon.
    ///
    /// `label` is equivalent to the value of `vann:preferredNamespacePrefix` as may be declared on the base IRI of the
    /// associated ``Namespace``.
    public let label: String

    /// The namespace represented by the prefix.
    public let namespace: Namespace

    /// Creates a new ``Prefix`` with an associated ``Namespace``.
    public init(_ label: String, for namespace: Namespace) {
        self.label = label
        self.namespace = namespace
    }

    /// Creates a new ``Prefix`` with an associated ``Namespace``, using closures for result builders or deferred initialization.
    public init(_ label: () -> String, for namespace: () -> Namespace) {
        self.label = label()
        self.namespace = namespace()
    }

    /// Returns the compact representation of a term within the namespace of this prefix.
    public func pname(for term: String) -> String { "\(label):\(term)" }

    /// Returns the compact representation of a term within the namespace of this prefix.
    public subscript(term: String) -> String { "\(label):\(term)" }

    /// Returns the IRI for a prefixed name string, if the prefixed name is valid for this prefix.
    public func iri(from pname: String) -> IRI? {
        guard pname.hasPrefix("\(label):") else { return nil }
        let term: String = String(pname.dropFirst(label.count + 1))
        return namespace[term]
    }
}
