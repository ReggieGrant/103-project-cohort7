import UIKit

class Pet {
    
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


// 1. Create a new object (a Pet)
let myPet = Pet(name:"Walter" , breed:"Mixed" , age:7 , owner:"Fernanda" )
print(myPet.name)

//2. Changing values
myPet.owner = "Kate"
print(myPet.owner)
