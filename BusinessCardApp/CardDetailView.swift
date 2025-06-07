import SwiftUI

struct CardDetailView: View {
    let card: BusinessCard

    var body: some View {
        Form {
            Text("Name: \(card.name)")
            Text("Title: \(card.jobTitle)")
            Text("Phone: \(card.phone)")
            Text("Email: \(card.email)")
            Text("Company: \(card.company)")
        }
        .navigationTitle("Details")
    }
}
