//
//  RDFSubject.swift
//  SwiftAxiom / RDF / Primitives
//
//  Created on 2026-08-28 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

public enum RDFSubject: ExpressibleByIRI, Codable, Sendable {
    case blankNode(BlankNode)
    case iri(IRI)
    case prefixedName(PrefixedName)
    indirect case tripleTerm(Statement)

    public init(iri: IRI) {
        self = .iri(iri)
    }
}
