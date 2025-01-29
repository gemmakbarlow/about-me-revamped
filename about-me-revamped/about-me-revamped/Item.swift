//
//  Item.swift
//  about-me-revamped
//
//  Created by Gemma Barlow on 1/29/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
