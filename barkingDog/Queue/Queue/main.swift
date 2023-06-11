//
//  main.swift
//  Queue
//
//  Created by 장지수 on 2023/06/11.
//

import Foundation

// 10845번
var array : [Int] = []
var head = 0
var tail = 0

func push(num : Int) {
    array.append(num)
    tail += 1
}
func pop() {
    if head > array.count - 1 {
        print(-1)
    } else {
        print(array[head])
        head += 1
    }
}
func size() {
    print(tail - head)
}
func empty() {
    if tail == head {
        print(1)
    } else {
        print(0)
    }
}
func front() {
    if array.count == 0 {
        print(-1)
    } else {
        print(array[head])
    }
}
func back() {
    if array.count == 0 {
        print(-1)
    } else {
        print(array[tail-1])
    }
}

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    if input[0] == "push" {
        var num = Int(input[1])!
        push(num: num)
    }
    if input[0] == "pop" {
        pop()
    }
    if input[0] == "size" {
        size()
    }
    if input[0] == "empty" {
        empty()
    }
    if input[0] == "front" {
        front()
    }
    if input[0] == "back" {
        back()
    }
}
