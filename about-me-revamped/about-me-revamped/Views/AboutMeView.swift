//
//  AboutMeView.swift
//  about-me-revamped
//
//  Created by Gemma Barlow on 1/29/25.
//



// MARK: - Views/AboutMeView.swift
import SwiftUI

struct AboutMeView: View {
    @State private var showingSocialLinks = false
    
    let experiences = [
		WorkExperience(year: "2025", company: "Square", location: "Brooklyn, New York",
					  role: "Staff iOS Engineer", logoName: nil, backgroundColor: Color("MintGreen")),
		WorkExperience(year: "2020", company: "Peloton", location: "New York, New York",
					  role: "Staff iOS Engineer", logoName: nil, backgroundColor: Color("SkyBlue")),
        WorkExperience(year: "2019", company: "Radar", location: "New York, New York",
                      role: "iOS Lead", logoName: "radar-logo", backgroundColor: Color("MintGreen")),
        WorkExperience(year: "2017", company: "Etsy", location: "Brooklyn, New York", 
                      role: "Senior Engineering Manager (Mobile)", logoName: "etsy-logo", backgroundColor: Color("SkyBlue")),
        WorkExperience(year: "2014", company: "Harry's", location: "New York, New York", 
                      role: "iOS Team Lead", logoName: "harrys-logo", backgroundColor: Color("MintGreen")),
        WorkExperience(year: "2013", company: "Couchsurfing", location: "San Francisco, California", 
                      role: "Mobile Team Lead", logoName: "couchsurfing-logo", backgroundColor: Color("SkyBlue")),
        WorkExperience(year: "2011", company: "Lonely Planet - BBC", location: "Oakland, California", 
                      role: "Senior iOS Developer", logoName: "lonely-planet-logo", backgroundColor: Color("MintGreen")),
        WorkExperience(year: "2009", company: "Intunity", location: "Melbourne, Victoria, Australia", 
					   role: "iOS Developer", logoName: nil, backgroundColor: Color("SkyBlue"))
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack(spacing: 0) {
                        HeaderView()
                        
                        ForEach(experiences) { experience in
                            ExperienceRowView(experience: experience)
                        }
                        
                        FooterView()
                    }
                }
				.background(Color(.backgroundDark))

                if showingSocialLinks {
                    SocialLinksView(isPresented: $showingSocialLinks)
                        .transition(.move(edge: .bottom))
                }
            }
        }
    }
}
