//
//  HeaderView.swift
//  about-me-revamped
//
//  Created by Gemma Barlow on 1/29/25.
//


// MARK: - Views/HeaderView.swift
import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
			Color.backgroundDark

            HStack {
                VStack(alignment: .leading) {
                    Text("Hi, I'm Gemma.")
                        .font(.title)
                        .bold()
                    Text("iOS DEVELOPER SINCE '09")
                        .font(.caption)
                }
                .foregroundColor(.white)
                
                //Spacer()
                
				Image("avatar", bundle: .main)
                    .resizable()
                    .frame(width: Spacing.Avatar.standard, height: Spacing.Avatar.standard)
                    .clipShape(Circle())
            }
			.padding([.leading, .top], Spacing.standard)
        }
        .frame(height: Spacing.Container.height.header)
    }
}
