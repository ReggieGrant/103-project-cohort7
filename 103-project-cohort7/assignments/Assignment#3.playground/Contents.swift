import UIKit

class StudentClass {
    
    // Attributes
    var name: String
    var age: Int
    var grade: Double
    
    
    // Initializer
    init(name: String, age: Int, grade: Double){
        self.name = name
        self.age = age
        self.grade = grade
        
    }
    
    // Method (Behavior)
    
}

let grades: [StudentClass] = [
    StudentClass(name: "Alice", age: 18, grade: 87.5),
    StudentClass(name: "Bob", age: 19, grade: 96.2),
    StudentClass(name: "Jim", age: 20, grade: 74.8)
]

// Average Grades (average >= 60)
func averageGrade(grades: [StudentClass]) -> Double {
    var total: Double = 0
    for grade in grades {
        total += grade.grade
    }
    return total / Double(grades.count)
}
print(averageGrade(grades: grades))

