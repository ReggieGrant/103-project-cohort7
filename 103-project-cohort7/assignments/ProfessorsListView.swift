//
//  ProfessorsListView.swift
//  103-project-cohort7
//
//  Created by Reginald Grant on 3/13/26.
//

import SwiftUI

class ProfessorClass: Identifiable {
    let id: UUID = UUID()

    // Attributes
    var firstName: String
    var lastName: String
    var phoneNumber: String

    // Initializer
    init(firstName: String, lastName: String, phoneNumber: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
    }

    // Method (Behavior)
}

struct ProfessorsListView: View {
    @State private var professors: [ProfessorClass] = [
        ProfessorClass(firstName: "Reggie", lastName: "Grant", phoneNumber: "6194837137"),
        ProfessorClass(firstName: "Quinn", lastName: "Grant", phoneNumber: "6195551212"),
    ]
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var phoneNumber: String = ""

    var body: some View {
        VStack {
            List(professors) { professor in
                Text("\(professor.firstName) \(professor.lastName) \(professor.phoneNumber)")
            }
            
            Form {
                Section(header: Text("Add a Professor")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Phone Number", text: $phoneNumber)
                    Button("Add Professor") {
                        addProfessor()
                    }
                    .disabled(firstName.isEmpty || lastName.isEmpty || phoneNumber.isEmpty)
                }
            }
            
        }
    }

    private func addProfessor() {
        professors.append(
            ProfessorClass(
                firstName: firstName,
                lastName: lastName,
                phoneNumber: phoneNumber
            )
        )
        firstName = ""
        lastName = ""
        phoneNumber = ""
    }
}

#Preview {
    ProfessorsListView()
}
