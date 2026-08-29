//
//  Scratch.swift
//  SwiftAxiom
//  © 2026 Dylan Umsted <dylan@umsted.org>
//

// MARK: - Infix Operators

infix operator ?⁚: ComparisonPrecedence
infix operator ?∈: ComparisonPrecedence
infix operator ∃

func ?⁚ (_ α: Any, _ ω: Any.Type) -> Bool {
    return type(of: α) == ω
}

func ?∈ <Type: Equatable>(_ α: Type, _ ω: any RandomAccessCollection<Type>) -> Bool {
    return ω.contains { $0 == α }
}

func ∃<C: RangeReplaceableCollection>(_ α: inout C, _ ω: C.Element) {
    return α.append(ω)
}


// MARK: - Prefix Operators

prefix operator ?∃
prefix operator ∀

prefix func ?∃ (_ ω: Any?) -> Bool {
    return ω != nil
}

prefix func ∀ <S: Sequence>(_ ω: S) -> ((S.Element) -> Bool) -> Bool {
    return { (predicate: (S.Element) -> Bool) -> Bool in
        ω.allSatisfy(predicate)
    }
}