import Foundation

public enum GraphElement {
    case base(Base)
    case prefix(Prefix)
    case serialization(Serialization)
    case statement(Statement)
}

@resultBuilder
public struct GraphBuilder {
    public static func buildExpression(_ expression: Base) -> GraphElement { .base(expression) }
    public static func buildExpression(_ expression: Prefix) -> GraphElement { .prefix(expression) }
    public static func buildExpression(_ expression: Serialization) -> GraphElement { .serialization(expression) }
    public static func buildExpression(_ expression: Statement) -> GraphElement { .statement(expression) }
    public static func buildBlock(_ components: GraphElement...) -> [GraphElement] { components }
    public static func buildOptional(_ component: [GraphElement]?) -> [GraphElement] { component ?? [] }
    public static func buildEither(first component: [GraphElement]) -> [GraphElement] { component }
    public static func buildEither(second component: [GraphElement]) -> [GraphElement] { component }
}

public struct Graph: Sendable {
    public private(set) var bases: [String] = []
    public private(set) var prefixes: [String: String] = [:]
    public private(set) var serialization: Serialization?
    public private(set) var statements: [Statement] = []

    public init(@GraphBuilder _ content: () -> [GraphElement]) {
        let elements: [GraphElement] = content()
        for element: GraphElement in elements {
            switch element {
            case .base(let b):
                self.bases.append(b.iri)
            case .prefix(let p):
                self.prefixes[p.prefix] = p.iri
            case .statement(let s):
                self.statements.append(s)
            case .serialization(let s):
                self.serialization = s
            }
        }
    }

    public func prefixIRI(_ prefix: String) -> String? {
        return self.prefixes[prefix]
    }

    public func prefixIdentifier(_ iri: String) -> Dictionary<String, String>.Keys {
        return self.prefixes.filter { $0.value == iri }.keys
    }
}

let someGraph: Graph = Graph {
    Base { "https://example.com/" }
    Prefix("ex") { "https://example.com/" }
    Prefix("foaf") { "https://xmlns.com/foaf/0.1/" }
    Serialization.ttl(.v1_2)
    
}
