//
//  Serialization.swift
//  SwiftAxiom / RDF / Serialization
//
//  Created on 2026-08-28 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

/// The serializations of RDF, whether specifically or otherwise.
public enum Serialization: Sendable {

    /// The JSON-LD serialization of RDF.
    @available(*, deprecated, message: "JSON-LD is not yet supported.")
    case jsonld

    /// The N-Triples serialization of RDF.
    @available(*, deprecated, message: "N-Triples is not yet supported.")
    case nt  //(NTriplesVersion)

    /// The N-Quads serialization of RDF.
    @available(*, deprecated, message: "N-Quads is not yet supported.")
    case nq  //(NQuadsVersion)

    /// The Notation3 (N3) serialization of RDF.
    @available(*, deprecated, message: "N3 is not yet supported.")
    case n3  //(Notation3Version)

    /// The RDF/XML serialization.
    @available(*, deprecated, message: "RDF/XML is not yet supported.")
    case rdfxml  //(XMLVersion)

    /// The TriG (Triple Graph) serialization of RDF.
    @available(*, deprecated, message: "TriG is not yet supported.")
    case trig  //(TriGVersion)

    /// The Turtle (Terse Triple Language/TTL) serialization of RDF.
    case ttl(TurtleVersion)
}
