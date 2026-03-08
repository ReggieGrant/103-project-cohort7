import UIKit


class DogClass {
    
    // Attributes
    var name: String
    var breed: String
    var age: Int
    var owner: String
    
    
    // Initializer
    init(name: String, breed: String, age: Int, owner: String){
        self.name = name
        self.breed = breed
        self.age = age
        self.owner = owner
        
    }
    
    // Method (Behavior)
    
}


// 1. Create a new dog
let dog1 = DogClass(name:"Tato", breed:"Mixed", age:7, owner:"Reggie")

let dogsName: [String] = ["Tato","Walter","Rocky"]


let dogs: [DogClass] = [
    DogClass(name:"Mamba", breed: "Mixed", age: 7, owner:"Fernanda"),
    DogClass(name:"Rover", breed:"Mixed", age:10, owner:"Reggie")
]

print(dogsName[1])

print(dogs[1].name)

print(dogs[0].age)

print(dogs[1].breed)

// Average age of the dogs in the array
func averageAge(dogs: [DogClass]) -> Double {
    var totalAge = 0
    
    for dog in dogs {
        totalAge += dog.age
    }
    
    return Double(totalAge) / Double(dogs.count)

}

// Call the function

let result = averageAge(dogs:  dogs)
print(result)
