import SwiftUI

struct ContentView: View {
    @State private var cards: [BusinessCard] = []

    var body: some View {
        NavigationView {
            List(cards) { card in
                NavigationLink(destination: CardDetailView(card: card)) {
                    VStack(alignment: .leading) {
                        Text(card.name).font(.headline)
                        Text(card.company).font(.subheadline).foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Business Cards")
            .toolbar {
                NavigationLink(destination: AddCardView(cards: $cards)) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}
