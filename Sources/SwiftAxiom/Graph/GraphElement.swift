//
//  GraphElement.swift
//  SwiftAxiom Graph
//
//  Created on 2026-08-30 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

public enum GraphElement {
    case base(Base)
    case prefix(Prefix)
    case serialization(Serialization)
    case statement(Statement)
}
