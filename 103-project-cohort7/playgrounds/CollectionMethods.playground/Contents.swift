import UIKit

// 1. CREATE/INTIALIZE
var fruitsArray: [String] = ["Banana","Apple","Orange"]
var fruitSet: Set<String> = ["Banana", "Apple", "Orange"]
var fruitsDictionary: [String:String] = ["YELLOW":"Banana", "RED":"Apple", "ORANGE":"Orange"]

print("----CREATE-----")
print("Array:", fruitsArray)
print("Set:",fruitSet)
print("Dictionary", fruitsDictionary)



// 2. ADD ELEMENTS
// Array -> Append or insert
fruitsArray.append("Mango")

// Set -> Insert
fruitSet.insert("Mango")

// Dictionary -> assign new key value
fruitsDictionary["GREEN"] = "Mango"


print("\n----ADD-----")
print("Array:", fruitsArray)
print("Set:",fruitSet)
print("Dictionary", fruitsDictionary)

//3. REMOVE
print("\n---- REMOVE ----")
// Array -> remove by position
fruitsArray.remove(at:0)

// Set -> remove element by name
fruitSet.remove("Banana")


// Dictionary -> remove by key
fruitsDictionary.removeValue(forKey: "YELLOW")

print("\n---- REMOVE -----")
print("Array:", fruitsArray)
print("Set:",fruitSet)
print("Dictionary", fruitsDictionary)

//4. SEARCH/CHECK ELEMENT
print("\n---- SEARCH -----")
print("Array contains Apple?: \(fruitsArray.contains("Apple"))")
print("Set contains Apple?:\(fruitSet.contains("Apple"))")
print("Dictionary has a key RED?: \(fruitsDictionary.keys.contains("RED"))")

//5. SORTING
print("\n--- SORTING ---")
print("Array sorted ascending:",fruitsArray.sorted(by: >))
print("Set sorted:", fruitSet.sorted())

let sortedByKey = fruitsDictionary.sorted{ $0.key < $1.key}
print(sortedByKey)

//6. CLRAR ALL
// removeAll()
fruitsArray.removeAll()
print(fruitsArray)


