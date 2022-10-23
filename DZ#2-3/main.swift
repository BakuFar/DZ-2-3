//
//  main.swift
//  DZ#2-3
//
//  Created by Фархат Сталбек уулу on 23/10/22.
//

import Foundation

//Создать класс DataBase.

//Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса, потом использовать)
//
//В каждом из классов, касающихся базы данных должны быть методы для добавление, удаления и считывания учеников/учителей.
//Другими способами ничего изменяться не должно
//Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.
//Пример:
//#1 - Имя Фамилия - Возраст - Класс - Средний балл

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
var edil = Student(name: "Edil", surname: "Baysalov", age: 16, grade: 9, avarageScore: 78)
var vlad = Student(name: "Vladislav", surname: "Voskoboynikov", age: 14, grade: 7, avarageScore: 86)
var meder = Student(name: "Meder", surname: "Bazarbaev", age: 13, grade: 7, avarageScore: 77)

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
let dayir = Teacher(name: "Dayir", surname: "Duyshobaev", age: 32)
let asyl = Teacher(name: "Asylbek", surname: "Agay", age: 42)

class Database {
    private var studentsArray: [Student] = []
    private var studentsString: String = ""
    private var studentsCount: Int = 0
    private var teachersArray: [Teacher] = []
    private var teachersString: String = ""
    private var teachersCount: Int = 0

    func addToStudentsArray(student: Student) {
        studentsArray.append(student)
        studentsCount += 1
        studentsString += "\nStudent #\(studentsCount)\nname - \(student.name)\nsurname - \(student.surname)\nage - \(student.age)\ngrade - \(student.grade)\navarage score - \(student.avarageScore)\n"
    }
    func showStudentsInfo() {
        print(studentsString)
    }
    func addToTeachersArray(teacher: Teacher) {
        teachersArray.append(teacher)
        teachersCount += 1
        teachersString += "\nTeacher #\(teachersCount)\nname - \(teacher.name)\nsurname - \(teacher.surname)\nage - \(teacher.age)\n"
    }
    func showTeachersInfo() {
        print(teachersString)
    }
}
let database = Database()
database.addToStudentsArray(student: vlad)
database.addToStudentsArray(student: edil)
database.addToStudentsArray(student: meder)
database.showStudentsInfo()
database.addToTeachersArray(teacher: dayir)
database.addToTeachersArray(teacher: asyl)
database.showTeachersInfo()
