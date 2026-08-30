//
//  SwiftAxiom.swift
//  SwiftAxiom
//
//  Created on 2026-08-28 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

let someGraph: Graph = Graph {
    Base { "https://example.com/" }
    Prefix("ex") { "https://example.com/" }
    Prefix("foaf") { "https://xmlns.com/foaf/0.1/" }
    Serialization.ttl(.v1_2)
}
