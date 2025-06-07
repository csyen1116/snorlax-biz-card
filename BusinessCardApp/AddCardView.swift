import SwiftUI

struct AddCardView: View {
    @Binding var cards: [BusinessCard]

    @State private var name = ""
    @State private var jobTitle = ""
    @State private var phone = ""
    @State private var email = ""
    @State private var company = ""

    var body: some View {
        Form {
            TextField("Name", text: $name)
            TextField("Job Title", text: $jobTitle)
            TextField("Phone", text: $phone)
            TextField("Email", text: $email)
            TextField("Company", text: $company)
            Button("Add Card") {
                let card = BusinessCard(name: name, jobTitle: jobTitle, phone: phone, email: email, company: company)
                cards.append(card)
            }
        }
        .navigationTitle("Add New Card")
    }
}
