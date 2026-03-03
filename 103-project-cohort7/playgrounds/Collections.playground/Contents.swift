import UIKit
print("-----ARRAY-----")
print("""
    1.Ordered
    2.Allow duplicates
    3.Every item has a position (index)
    """)
var emptyArray: [Int] = [] // Empty array

var gradesArray: [Double] = [66.78, 99.10, 80.55]
var namesArray: [String] = ["Fernanda", "Ashley","Reggie"]

// String Interpolation
print("This is a empty arrayL -> \(emptyArray)")
print("This is the array of grades -> \(gradesArray)")


print("\n--- SET ----")
print("""
    1.Unordered
    2.There is no positon (index)
    3.No duplicates
    """)

var emptySet = Set<Int>()

var gradesSet: Set<Double> = [66.78, 99.10, 80.55]

print("This is the set of grades \(gradesSet)")


print("\n---- DICTIONARY ------")
print("""
    1.Unordered
    2.Key-Value pairs
    3.Each key must be unique
    """)

var emptyDictionary: [String:Int] = [:]

var gradesDictionary: [String:Double] = ["Ashely":100, "Feranda":56.78, "Tim":100]
print()


var studentsNames: [String] = ["Reggie", "Ashley", "Tim","Jeff"]
print(studentsNames)

var uniqueIds: Set<Int> = [102, 101, 202, 303]
print(uniqueIds)

var yourGrades: [String:Double] = ["Reggie":88.58, "Jeff":100, "Tim":100, "Ashley":100]
print(yourGrades)


var courseNames: [String] = ["FDSI","MDI1","MDI2"]
print(courseNames)
