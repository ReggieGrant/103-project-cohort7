//
//  Assignment#2.swift
//  103-project-cohort7
//
//  Created by Reginald Grant on 3/6/26.
//

import SwiftUI

struct Assignment_2: View {
    @State private var studentsGrades: [String: Double] = ["Alice": 87.75, "Bob": 92.50, "Mark": 78.25, "Max": 85.63, "Jane": 90.10]
    @State private var showingAverage = false

    private var averageGrade: Double {
        guard !studentsGrades.isEmpty else { return 0.0 }
        return studentsGrades.values.reduce(0, +) / Double(studentsGrades.count)
    }

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()

                Text("Student Grades")
                    .font(.largeTitle)
                    .foregroundStyle(.blue)

                List(studentsGrades.sorted(by: { $0.key < $1.key }), id: \.key) { name, grade in
                    HStack {
                        Text(name)
                        Spacer()
                        Text(String(format: "%.2f", grade))
                    }
                }

                if showingAverage {
                    Text("Average Grade: \(averageGrade, specifier: "%.2f")")
                        .font(.headline)
                        .foregroundStyle(.blue)
                        .padding(.bottom)
                }
            }
            .navigationTitle(Text("GradeBook"))
            .navigationBarTitleDisplayMode(.inline)

            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showingAverage.toggle()
                    } label: {
                        Image(systemName: "arrow.up.arrow.down.circle")
                            .foregroundStyle(.blue)
                    }
                }
            }
        }
    }
}

#Preview {
    Assignment_2()
}
