import Foundation
//Создать класс DataBase.
//Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса, потом использовать)
//В каждом из классов, касающихся базы данных должны быть методы для добавление, удаления и считывания учеников/учителей.
//Другими способами ничего изменяться не должно
//Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.
//Пример:
//#1 - Имя Фамилия - Возраст - Класс - Средний балл

class Database {
    private var studentsArray: [Student] = []
    private var studentsString: String = ""
    private var teachersArray: [Teacher] = []
    private var teachersString: String = ""
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
    func addStudent(student: Student) {
        studentsArray.append(student)
    }
    func removeStudent(name: String, surname: String) {
        for (index, value) in studentsArray.enumerated() {
            if value.name == name && value.surname == surname {
                studentsArray.remove(at: index)
                break
            }
        }
    }
    func showStudentsInfo() {
        dump(studentsArray)
    }
    func printStudentsList() {
        for (index, item) in studentsArray.enumerated() {
            studentsString += "\n#\(index+1) \(item.name) \(item.surname) age - \(item.age) grade - \(item.grade) avarage score - \(item.avarageScore)"
        }
        print(studentsString)
    }
    func addTeacher(teacher: Teacher) {
        teachersArray.append(teacher)
        }
    func removeTeacher (name: String, surname: String) {
        for (index, item) in teachersArray.enumerated() {
            if item.name == name && item.surname == surname {
                teachersArray.remove(at: index)
                break
            }
        }
    }
    func showTeachersInfo() {
        dump(teachersArray)
    }
    func printTeachersList() {
        for (index, item) in teachersArray.enumerated() {
            teachersString += "\n#\(index+1) \(item.name) \(item.surname) age - \(item.age)"
        }
        print(teachersString)
    }
}
let database = Database()

database.addTeacher(teacher: Database.Teacher(name: "Sanjar", surname: "Kuliev", age: 42))
database.addTeacher(teacher: Database.Teacher(name: "Nurdin", surname: "Osmonov", age: 45))
database.addTeacher(teacher: Database.Teacher(name: "Koshoev", surname: "Maksat", age: 50))
database.removeTeacher(name: "Nurdin", surname: "Osmonov")
database.showTeachersInfo()
database.printTeachersList()

database.addStudent(student: Database.Student(name: "Vladislav", surname: "Voskoboynikov", age: 12, grade: 6, avarageScore: 75))
database.addStudent(student: Database.Student(name: "Aybek", surname: "Ramankulov", age: 10, grade: 4, avarageScore: 88))
database.addStudent(student: Database.Student(name: "Sanjar", surname: "Kuliev", age: 17, grade: 11, avarageScore: 60))
database.removeStudent(name: "Aybek", surname: "Ramankulov")
database.showStudentsInfo()
database.printStudentsList()
