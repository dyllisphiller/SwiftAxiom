//
//  Prefix.swift
//  SwiftAxiom
//
//  Created on 2026-08-30 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

/// Represents a common IRI space that is superordinate to a set of items, such as vocabulary terms, ontology members,
/// or dataset elements.
public struct Namespace: Codable, Hashable, Sendable {
    /// The IRI of the Namespace.
    /// 
    /// `iri` is usually the same as the value of `vann:preferredNamespaceIRI` as may declared on the namespace IRI.
    public let iri: IRI

    /// A friendly, natural language label for the namespace.
    public let label: String?

    /// Creates a new Namespace with a name and IRI.
    public init(_ iri: IRI, label: String?) {
        self.iri = iri
        self.label = label
    }

    /// Returns an IRI for a term within this Namespace.
    public subscript(term: String) -> IRI { iri.appending(term) }
}

/// Predefined standard namespaces.
public extension Namespace {
    /// The Friend-of-a-Friend (FOAF) vocabulary.
    static let FOAF: Self = Self(IRI(string: "https://xmlns.com/foaf/0.1/"), label: "Friend-of-a-Friend Vocabulary")

    /// The Web Ontology Language.
    static let OWL: Self = Self(IRI(string: "https://www.w3.org/2002/07/owl#"), label: "Web Ontology Language")

    /// The RDF Syntax vocabulary.
    static let RDF: Self = Self(IRI(string: "http://www.w3.org/1999/02/22-rdf-syntax-ns#"), label: "RDF Syntax")

    /// The RDF Schema vocabulary.
    static let RDFS: Self = Self(IRI(string: "http://www.w3.org/2000/01/rdf-schema#"), label: "RDF Schema")

    /// The Simple Knowledge Organization System (SKOS) vocabulary.
    static let SKOS: Self = Self(IRI(string: "http://www.w3.org/2004/02/skos/core#"), label: "Simple Knowledge Organization System")

    /// The XML Schema Definition (XSD) vocabulary.
    static let XSD: Self = Self(IRI(string: "http://www.w3.org/2001/XMLSchema#"), label: "XML Schema Definition")
}
