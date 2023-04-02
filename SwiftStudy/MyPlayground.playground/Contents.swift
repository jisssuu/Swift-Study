import UIKit

// 1. swift 조건표현

var isDarkModeOn : Bool = true

if isDarkModeOn == true {
    print("true")
}
if isDarkModeOn != false {
    print("true")
}
if isDarkModeOn {
    print("true")
}
if !isDarkModeOn {
    print("")
}

// 2. for .. in 반복문
var myArray : [Int] = [1,2,3,4,5,6,7,8,9]

for item in myArray { // myArray 내부의 숫자 모두 출력
    print(item)
}
for item in myArray where item > 5 { // 5보다 큰 6부터 출력
    print(item)
}
for item in myArray where item % 2 == 0 { // 짝수인 숫자만 출력
    print(item)
}

// 3. enum 표현 방법

enum School {
    case elementary
    case middle
    case high
    // case elementary, middle, high 로 표현 가능
}
let yourSchool = School.elementary
print(yourSchool)

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.first
print(yourGrade)

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    
    func get() -> String {
        switch self {
        case .elementary(let name):
            return name
        case .middle(let name):
            return name
        }
    }
}
let yourMiddleSchoolName = SchoolDetail.middle(name: "Geomam")
print(yourMiddleSchoolName) // middle(name: "Geomam") 으로 출력
print(yourMiddleSchoolName.get()) // Geomam 으로 출력
