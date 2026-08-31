//
//  IRI.swift
//  SwiftAxiom / RDF / Primitives
//
//  Created on 2026-08-28 by Dylan Umsted.
//  © 2026 Dylan Umsted <dylan@umsted.org>.
//

import Foundation

/// An Internationalized Resource Identifier (IRI).
/// 
/// - Note: Although a URN *is* a valid IRI, there is limited tooling support for the `urn:` scheme. This is partially
/// because there is no standard for relative URNs, so they cannot be resolved.
public struct IRI: Codable, Hashable, Sendable {
    public let string: String

    public init(string: String) { self.string = string }
    public init(url: URL) { self.string = url.absoluteString }

    public func appending(_ component: String) -> IRI {
        return IRI(string: self.string + component)
    }
}

public extension IRI {
    /// An empty IRI, used to refer to the current document.
    static let empty: Self = Self(string: "")
}
