struct User {
    var fullName: String
    var email: String
    var age: Int
}

var someUser = User(fullName: "Phyllis Wong", email: "phyllis.wong@students.makeschool.com", age: 42)
var anotherUser = someUser

someUser.email = "wong.phyllis@gmail.com"

class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init(fullName: String, email: String, age: Int) {
        self.fullName = fullName
        self.email = email
        self.age = age
    }
}

var somePerson = Person(fullName: "Tim Cook", email: "tim.cook@apple.com", age: 54)
var anotherPerson = somePerson

somePerson.email = "t.cook@apple.com"
print(anotherPerson.email)






































































