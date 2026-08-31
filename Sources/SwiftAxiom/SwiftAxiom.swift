//
//  SwiftAxiom.swift
//  SwiftAxiom
//
//  Created on 2026-08-28 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

let ex: Namespace = Namespace(IRI(string: "https://example.com/"), label: "Example Namespace")


let someGraph: Graph = Graph {
    Serialization.ttl(.v1_2)
    Base { "https://example.com/" }
    // (exNS)
    // (Namespace.FOAF)
    
    Statement(
        .iri(.empty),
        .iri(Namespace.RDF["type"]),
        .iri(Namespace.OWL["ontology"])
    )

    Statement(
        .iri(ex["john"]),
        .iri(Namespace.RDF["type"]),
        .iri(Namespace.FOAF["Person"])
    )

    Statement(
        .iri(ex["john"]),
        .iri(Namespace.FOAF["name"]),
        .literal(RDFLiteral("John Smith"))
    )
}
