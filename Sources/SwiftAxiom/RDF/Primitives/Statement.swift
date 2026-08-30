//
//  Statement.swift
//  SwiftAxiom / RDF / Primitives
//
//  Created on 2026-08-28 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

/// Represents a single triple (subject–predicate–object) or quad (subject–predicate–object–graph) statement.
public struct Statement: Sendable {

    /// The resource being described by the statement.
    public let subject: RDFSubject

    /// The predicate, property, or attribute of the resource being described by the statement.
    public let predicate: RDFPredicate

    /// The value of the predicate of the statement.
    public let object: RDFObject

    /// The graph or context in which this statement is true.
    public let graph: IRI?

    /// Creates a subject–predicate–object statement with an optional graph context.
    public init(_ subject: RDFSubject, _ predicate: RDFPredicate, _ object: RDFObject, _ graph: IRI? = nil) {
        self.subject = subject
        self.predicate = predicate
        self.object = object
        self.graph = graph
    }

    /// Creates a subject–predicate–object statement with an optional graph context using closures for result building
    /// and deferred evaluation.
    public init(
        subject: () -> RDFSubject,
        predicate: () -> RDFPredicate,
        object: () -> RDFObject,
        graph: () -> IRI? = { nil }
    ) {
        self.subject = subject()
        self.predicate = predicate()
        self.object = object()
        self.graph = graph()
    }
}
