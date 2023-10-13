//
//  main.swift
//  Baitap7
//
//  Created by Trương Minh Lượng Jr on 12/10/2023.
//

import Foundation

//func isPalindrom(_ number: Int) -> Bool {
//    let numberString = String(number)
//    let reversedString = String(numberString.reversed())
//    
//    if numberString == reversedString {
//        print("\(number) là số Palindrom")
//        return true
//    }else {
//        print("\(number) không là số Palindrom")
//        return false
//    }
//}
//
//isPalindrom(12321)

//func romanToInteger(_ s: String) -> Int {
//    let romanDict: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
//    
//    var result = 0
//    var prevValue = 0
//    
//    for char in s.reversed() {
//        if let value = romanDict[char] {
//            print(romanDict[char])
//            if value < prevValue {
//                result -= value
//            } else {
//                result += value
//            }
//            prevValue = value
//        }
//    }
//    
//    // Trả về số nguyên kết quả
//    return result
//}
//
//// Sử dụng hàm để chuyển số La Mã thành số nguyên
//let romanNumber = "IV"
//let integerNumber = romanToInteger(romanNumber)
//print("Số nguyên tương ứng của \(romanNumber) là \(integerNumber)")

func mergeSortedArrays(_ array1: [Int], _ array2: [Int]) -> [Int] {
    var result: [Int] = []
    var index1 = 0
    var index2 = 0

    while index1 < array1.count && index2 < array2.count {
        if array1[index1] < array2[index2] {
            result.append(array1[index1])
            index1 += 1
        } else {
            result.append(array2[index2])
            index2 += 1
        }
    }

    // Đảm bảo rằng tất cả các phần tử còn lại trong mảng 1 được thêm vào kết quả (nếu có)
    while index1 < array1.count {
        result.append(array1[index1])
        index1 += 1
    }

    // Đảm bảo rằng tất cả các phần tử còn lại trong mảng 2 được thêm vào kết quả (nếu có)
    while index2 < array2.count {
        result.append(array2[index2])
        index2 += 1
    }

    return result
}

let array1 = [1, 3, 5, 7]
let array2 = [2, 4, 6, 8]

let mergedArray = mergeSortedArrays(array1, array2)
print(mergedArray)

