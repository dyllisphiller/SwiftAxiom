//
//  RDFSubject.swift
//  SwiftAxiom RDF Primitives
//  © 2026 Dylan Umsted <dylan@umsted.org>
//

public enum RDFSubject: Sendable {
    case blankNode(BlankNode)
    case iri(String)
    case prefixedName(String)
    indirect case tripleTerm(Statement)
}
