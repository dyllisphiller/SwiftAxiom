//
//  RDFSubject.swift
//  SwiftAxiom / RDF / Primitives
//
//  Created on 2026-08-28 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

public enum RDFSubject: Codable, Sendable {
    case blankNode(BlankNode)
    case iri(String)
    case prefixedName(String)
    indirect case tripleTerm(Statement)
}
