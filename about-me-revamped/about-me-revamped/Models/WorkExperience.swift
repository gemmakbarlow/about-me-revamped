//  Created by Gemma Barlow on 1/29/25.


// MARK: - Models/WorkExperience.swift
import SwiftUI

struct WorkExperience: Identifiable {
    let id = UUID()
    let year: String
    let company: String
    let location: String
    let role: String
    let logoName: String?
    var backgroundColor: Color
}
