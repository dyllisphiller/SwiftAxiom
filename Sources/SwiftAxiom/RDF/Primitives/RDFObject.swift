//
//  RDFObject.swift
//  SwiftAxiom / RDF / Primitives
//
//  Created on 2026-08-28 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

public enum RDFObject: ExpressibleByIRI, Codable, Sendable {
    case blankNode(BlankNode)
    case decimal(_ wholePart: Int, _ fractionalPart: Int)
    case double(Double)
    case integer(Int)

    /// An absolute or relative IRI.
    case iri(IRI)

    case literal(RDFLiteral)
    indirect case reifiedTriple(Statement)

    public init(iri: IRI) {
        self = .iri(iri)
    }

    // Draft computed property returning an appropriate Swift type for the RDFObject variant.
    // It is not fully implemented and requires further consideration for non-primitive types.
    // var nativeSwiftType: Any.Type {
    //     return switch self {
    //     case .blankNode: BlankNode.self
    //     case .decimal: Double.self
    //     case .double: Double.self
    //     case .integer: Int.self
    //     case .iri: IRI.self
    //     case .langString: String.self
    //     case .literal: String.self
    //     case .prefixedName: PrefixedName.self
    //     case .typedLiteral: String.self
    //     case .reifiedTriple: Statement.self
    //     case .tripleTerm: Statement.self
    //     }
    // }
}
