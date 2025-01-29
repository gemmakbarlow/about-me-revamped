//
//  SocialLinksView.swift
//  about-me-revamped
//
//  Created by Gemma Barlow on 1/29/25.
//


// MARK: - Views/SocialLinksView.swift
import SwiftUI

struct SocialLinksView: View {
    @Binding var isPresented: Bool
    
    let links = [
        "twitter": "twitter",
        "linkedin": "linkedIn",
        "github": "github",
        "gemmakbarlow.com": "website"
    ]
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.95)
            
            VStack(alignment: .leading, spacing: Spacing.large) {
                Button {
                    withAnimation {
                        isPresented = false
                    }
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color("MintGreen"))
                        .font(.title2)
                }
                .padding(.bottom, Spacing.medium)
                
                ForEach(Array(links.keys.sorted()), id: \.self) { link in
                    Button {
                        // Handle link tap
                    } label: {
                        Text("- \(link)")
                            .foregroundColor(.white)
                            .font(.title3)
                    }
                }
                
                Spacer()
                
                Text("LIKE RANDOM FACTS?")
                    .foregroundColor(Color("MintGreen"))
                    .font(.caption)
                    .padding(.bottom, Spacing.extraLarge)
                
                Text("Made with ❤️ for WWDC '15. Revamped with AI in '25.")
                    .font(.caption2)
                    .foregroundColor(.white.opacity(0.6))
            }
            .padding(Spacing.standard)
        }
        .edgesIgnoringSafeArea(.all)
    }
}
