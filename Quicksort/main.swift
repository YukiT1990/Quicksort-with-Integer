//
//  main.swift
//  Quicksort
//
//  Created by Yuki Tsukada on 2021/03/13.
//

import Foundation

func quicksort<Int: Comparable>(_ numbers: [Int]) -> [Int] {
    guard numbers.count > 1 else { return numbers }
    
    let pivot = numbers[numbers.count/2]
    let less = numbers.filter { $0 < pivot }
    let equal = numbers.filter { $0 == pivot }
    let greater = numbers.filter { $0 > pivot }
    
    return quicksort(less) + equal + quicksort(greater)
}

let list = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]
print(quicksort(list))

let list1 = [ 100, 120, 50, 0, 8, 3, 9, 2, -13, 14, 8, 34, 27, 0, 1, 3, 5, 70, 71, 8, -1, 26 ]
print(quicksort(list1))
