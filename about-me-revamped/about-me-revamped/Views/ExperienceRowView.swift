//  Created by Gemma Barlow on 1/29/25.


// MARK: - Views/ExperienceRowView.swift
import SwiftUI

struct ExperienceRowView: View {
    let experience: WorkExperience
    
    var body: some View {
        ZStack {
            experience.backgroundColor
            
            HStack {
                VStack(alignment: .leading, spacing: Spacing.small) {
                    Text(experience.year)
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))
                    
                    Text(experience.company)
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                    
                    Text(experience.location)
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                    Text(experience.role)
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))
                }
                
                Spacer()
                
                VStack {
					if let logoName = experience.logoName {
						Image(logoName)
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: Spacing.Avatar.standard, height: Spacing.Avatar.standard)
							.background(Color.black)
							.clipShape(RoundedRectangle(cornerRadius: 12))
					}
                }
            }
            .padding(Spacing.standard)
        }
        .frame(height: Spacing.Container.height.row)
    }
}
