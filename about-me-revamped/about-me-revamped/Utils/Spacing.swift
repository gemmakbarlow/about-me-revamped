//
//  Spacing.swift
//  about-me-revamped
//
//  Created by Gemma Barlow on 1/29/25.
//


// MARK: - Spacing.swift
import SwiftUI

struct Spacing {
    static let small: CGFloat = 4
    static let medium: CGFloat = 8
    static let standard: CGFloat = 16
    static let large: CGFloat = 20
    static let extraLarge: CGFloat = 40
    
    struct Container {
        static let height = ContainerHeight()
        
        struct ContainerHeight {
            let header: CGFloat = 100
            let row: CGFloat = 120
            let footer: CGFloat = 80
        }
    }
    
    struct Avatar {
        static let standard: CGFloat = 60
        static let small: CGFloat = 50
    }
}
