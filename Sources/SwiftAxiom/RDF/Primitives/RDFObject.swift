//
//  RDFObject.swift
//  SwiftAxiom / RDF / Primitives
//
//  Created on 2026-08-28 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

public enum RDFObject: Codable, Sendable {
    case blankNode(BlankNode)
    case decimal(_ wholePart: Int, _ fractionalPart: Int)
    case double(Double)
    case integer(Int)
    case iri(IRI)
    case langString(String, languageTag: String)
    case literal(String)
    case typedLiteral(String, datatype: IRI)
    indirect case reifiedTriple(Statement)
    indirect case tripleTerm(Statement)
}
