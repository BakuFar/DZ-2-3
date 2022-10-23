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

class Database {
    private var studentsArray: [Student] = []
    private var studentsString: String = ""
    private var studentsCount: Int = 0
    private var teachersArray: [Teacher] = []
    private var teachersString: String = ""
    private var teachersCount: Int = 0

    func addStudent(student: Student) {
        studentsArray.append(student)
        studentsCount += 1
        studentsString += "\nStudent #\(studentsCount)\nname - \(student.name)\nsurname - \(student.surname)\nage - \(student.age)\ngrade - \(student.grade)\navarage score - \(student.avarageScore)\n"
    }
    func showStudentsInfo() {
        print(studentsString)
    }
    func addTeacher(teacher: Teacher) {
        teachersArray.append(teacher)
        teachersCount += 1
        teachersString += "\nTeacher #\(teachersCount)\nname - \(teacher.name)\nsurname - \(teacher.surname)\nage - \(teacher.age)\n"
    }
    func showTeachersInfo() {
        print(teachersString)
    }
}
let database = Database()
let edil = Student(name: "Edil", surname: "Baysalov", age: 16, grade: 9, avarageScore: 78)
let vlad = Student(name: "Vladislav", surname: "Voskoboynikov", age: 14, grade: 7, avarageScore: 86)
let meder = Student(name: "Meder", surname: "Bazarbaev", age: 13, grade: 7, avarageScore: 77)
let dayir = Teacher(name: "Dayir", surname: "Duyshobaev", age: 32)
let asyl = Teacher(name: "Asylbek", surname: "Agay", age: 42)

database.addStudent(student: vlad)
database.addStudent(student: edil)
database.addStudent(student: meder)
database.showStudentsInfo()
database.addTeacher(teacher: dayir)
database.addTeacher(teacher: asyl)
database.showTeachersInfo()

