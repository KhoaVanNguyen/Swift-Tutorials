//: Playground - noun: a place where people can play

import UIKit


//var a = ["ni", "vi", "ki"]
//var b = a
//a.append(".com")
//print(b.count)



class Student {
    var name: String
    init(name: String) {
        self.name = name
    }
}


//let st1 = Student(name: "Khoa")
//let st2 = Student(name: "Alex")
//let st3 = Student(name: "My")
//
//var students1 = [st1,st2]
//var students2 = students1
//
//students1.append(st3)
//print(students2.count)


var st1 = Student(name: "Khoa")
var st2 = Student(name: "Alex")


st2 = st1
//st1.name = "Khoa Nguyen"
print(st1)









