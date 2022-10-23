class Student{
    var name: String = ""
    var surname: String = ""
    var age: Int = 0
    var grade: Int = 0
    var avarageScore: Int = 0
    
    init(name: String, surname: String, age: Int, grade: Int, avarageScore: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.grade = grade
        self.avarageScore = avarageScore
    }
}
class Teacher{
    var name: String = ""
    var surname: String = ""
    var age: Int = 0
    
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}
