//
//  RDFTerm.swift
//  SwiftAxiom / RDF / Protocols
//
//  Created on 2026-08-30 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

public protocol RDFTerm: Codable, Sendable {}

public protocol ExpressibleByIRI: RDFTerm {
    init(iri: IRI)
}

public protocol ExpressibleByPName: RDFTerm {
    init(pname: PrefixedName)
}
