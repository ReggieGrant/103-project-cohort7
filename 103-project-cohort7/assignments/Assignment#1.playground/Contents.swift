import UIKit

var studentNames: [String] = ["Jordan","James","Bryant","Curry","Carter"]
print(studentNames)

let yourGrades: [String:Double] = ["Jordan":75.98,"James":79.89,"Bryant":89.56,"Curry":95.6,"Carter":93.9]

let grades: [String:Int] = ["Jordan":99,"James":97,"Bryant":98,"Curry":92,"Carter":94]


var averageGrades = grades

for (name, grade) in yourGrades {
    if let existing = averageGrades[name] {
        averageGrades[name] = (existing + Int(grade)) / 2
    } else {
        averageGrades[name] = Int(grade)
    }
}

print("This is the average grades: \(averageGrades)")
