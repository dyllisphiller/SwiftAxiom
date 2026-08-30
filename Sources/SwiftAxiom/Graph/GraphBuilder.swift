//
//  GraphBuilder.swift
//  SwiftAxiom / Graph
//
//  Created on 2026-08-30 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

@resultBuilder
public struct GraphBuilder {
    public static func buildExpression(_ expression: Base) -> GraphElement { .base(expression) }
    public static func buildExpression(_ expression: Prefix) -> GraphElement { .prefix(expression) }
    public static func buildExpression(_ expression: Serialization) -> GraphElement {
        .serialization(expression)
    }
    public static func buildExpression(_ expression: Statement) -> GraphElement {
        .statement(expression)
    }
    public static func buildBlock(_ components: GraphElement...) -> [GraphElement] { components }
    public static func buildOptional(_ component: [GraphElement]?) -> [GraphElement] {
        component ?? []
    }
    public static func buildEither(first component: [GraphElement]) -> [GraphElement] { component }
    public static func buildEither(second component: [GraphElement]) -> [GraphElement] { component }
}
