//
//  TurtleVersion.swift
//  SwiftAxiom RDF SerializationMetadata
//  © 2026 Dylan Umsted <dylan@umsted.org>
//

public enum TurtleVersion: String, ExpressibleByStringLiteral, Sendable {
    /// An unknown version of the Terse Triple Language.
    case unknown

    /// Terse Triple Language for RDF 1.0.
    case v1 = "1.0"

    /// Terse Triple Language for RDF 1.1.
    case v1_1 = "1.1"

    /// Terse Triple Language for RDF 1.2.
    case v1_2 = "1.2"

    /// Returns a ``TurtleVersion`` from a string.
    public init(stringLiteral: String) {
        self =
            switch stringLiteral {
            case "1": .v1
            case "1.0": .v1
            case "1.1": .v1_1
            case "1.2": .v1_2
            default: .unknown
            }
    }
}
