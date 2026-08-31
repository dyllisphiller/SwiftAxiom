//
//  RDFPredicate.swift
//  SwiftAxiom RDF Primitives
//
//  Created on 2026-08-29 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

public enum RDFPredicate: ExpressibleByIRI, Codable, Sendable {
    /// An absolute or relative IRI.
    case iri(IRI)

    public init(iri: IRI) {
        self = .iri(iri)
    }
}
