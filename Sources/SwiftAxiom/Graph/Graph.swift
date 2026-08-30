//
//  Graph.swift
//  SwiftAxiom Graph
//
//  Created on 2026-08-28 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

public struct Graph: Codable, Sendable {
    public private(set) var baseIRIs: [String] = []
    public private(set) var prefixIRIs: [String: String] = [:]
    public private(set) var serialization: Serialization?
    public private(set) var statements: [Statement] = []

    public init(@GraphBuilder _ content: () -> [GraphElement]) {
        let elements: [GraphElement] = content()
        for element: GraphElement in elements {
            switch element {
            case .base(let b):
                self.baseIRIs.append(b.iri)
            case .prefix(let p):
                self.prefixIRIs[p.prefix] = p.iri
            case .statement(let s):
                self.statements.append(s)
            case .serialization(let s):
                self.serialization = s
            }
        }
    }

    public func prefixIRI(_ prefix: String) -> String? {
        return self.prefixIRIs[prefix]
    }

    public func prefixIdentifier(_ iri: String) -> Dictionary<String, String>.Keys {
        return self.prefixIRIs.filter { $0.value == iri }.keys
    }
}
