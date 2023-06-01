//
//  main.swift
//  DP
//
//  Created by 장지수 on 2023/06/01.
//

import Foundation

// 1463번

//let n = Int(readLine()!)!
//
//var array = Array(repeating: 0, count: 1000005)
//
//for i in 2..<array.count {
//    array[i] = array[i-1] + 1
//
//    if i % 2 == 0 {
//        array[i] = min(array[i/2]+1,array[i])
//    }
//    if i % 3 == 0 {
//        array[i] = min(array[i/3] + 1, array[i])
//    }
//}
//
//print(array[n])

// 9095번

var array = Array(repeating: 0, count: 20)
var result : [Int] = []
array[1] = 1
array[2] = 2
array[3] = 4

for i in 4..<array.count {
    array[i] = array[i-1] + array[i-2] + array[i-3]
}
let n = Int(readLine()!)!

for _ in 0..<n {
    let input = Int(readLine()!)!
    result.append(array[input])
}
result.forEach{print($0)}
