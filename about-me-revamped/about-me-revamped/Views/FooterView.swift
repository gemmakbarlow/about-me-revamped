//
//  FooterView.swift
//  about-me-revamped
//
//  Created by Gemma Barlow on 1/29/25.
//


// MARK: - Views/FooterView.swift
import SwiftUI

struct FooterView: View {
    var body: some View {
        ZStack {
			Color.backgroundDark
            
            HStack {
                Image("avatar-cool")
                    .resizable()
                    .frame(width: Spacing.Avatar.small, height: Spacing.Avatar.small)
                
                Text("Need More Details?")
                    .foregroundColor(.white)
                    .font(.headline)
                
                Spacer()
            }
        }
        .frame(height: Spacing.Container.height.footer)
    }
}
