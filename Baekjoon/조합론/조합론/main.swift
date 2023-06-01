//
//  main.swift
//  조합론
//
//  Created by 장지수 on 2023/06/01.
//

import Foundation

// 15439반

//let n = Int(readLine()!)!
//
//print(n * (n-1))

// 24723번

//import Foundation
//
//let n = Int(readLine()!)!
//
//print(pow(2, n))

// 10872번

//func factorial(num : Int) -> Int {
//    if num == 0 {
//        return 1
//    }
//    return num * factorial(num: num-1)
//}
//var n = Int(readLine()!)!
//print(factorial(num: n))

// 11050번

//func factorial(num:Int) -> Int {
//    if num == 0 {
//        return 1
//    }
//    return num * factorial(num: num - 1)
//}
//
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0]
//let r = input[1]
//
//let result = factorial(num: n) / (factorial(num: r) * factorial(num: n-r))
//print(result)

// 1010번

func factorial(num:Double) -> Double {
    if num == 0 {
        return 1
    }
    return num * factorial(num: num - 1)
}
let n = Int(readLine()!)!
var array : [Int] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Double($0)!}.sorted()
    let n = input[1]
    let r = input[0]
    
    let result = factorial(num: n) / (factorial(num: r) * factorial(num: n-r))
    array.append(Int(round(result)))
}
print(array)
