import Foundation

struct BusinessCard: Identifiable, Codable {
    let id: UUID
    var name: String
    var jobTitle: String
    var phone: String
    var email: String
    var company: String

    init(name: String, jobTitle: String, phone: String, email: String, company: String) {
        self.id = UUID()
        self.name = name
        self.jobTitle = jobTitle
        self.phone = phone
        self.email = email
        self.company = company
    }
}
