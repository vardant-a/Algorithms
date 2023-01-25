// MARK: Грокаем алгоритмы

var arrayInt: [Int] = []

for x in 1...200 {
    arrayInt.append(x)
}
arrayInt.sort { $0 < $1 }

// MARK: - Глава 1. Бинарный поиск
// MARK: Methods for binary search

func binarySearch(_ array: [Int], item: Int) {
    var count = 0
    var minIndex = 0
    var maxIndex = array.count - 1

    while minIndex <= maxIndex {
        var midIndex = (minIndex + maxIndex) / 2
        var guess = array[midIndex]
        
        if guess == item {
            count += 1
            print(count)
            return
        } else if guess < item {
            minIndex = midIndex + 1
            count += 1
        } else if guess > item {
            maxIndex = midIndex - 1
            count += 1
        } else {
            return
        }
    }
}

// MARK: - Глава 2. Сортировка выбором
// MARK: Function for search smallest value from array

func foundSmallest(_ array: [Int]) -> Int {
    var smallest = array[0]
    
    for index in 0..<array.count {
        if array[index] < smallest {
            smallest = array[index]
        }
    }
    return smallest
}

// MARK: Function for selection sort

func seletionSort(_ array: [Int]) -> [Int] {
    var array = array
    var newArray: [Int] = []
    
    for _ in 0..<array.count {
        let smallest = foundSmallest(array)
        let smalletstIndex = array.firstIndex(of: 3) ?? 0
        
        newArray.append(smallest)
        array.remove(at: smalletstIndex)
    }
    
    return newArray
}

// MARK: - Глава 3. Рекурсия
// MARK: Function recursion

func subtraction(_ value: Int) {
    var value = value
    print(value)
    
    if value != 0 {
        value -= 1
        subtraction(value)
    }
}


// MARK: -  Глава 4. Быстрая сортировка (Разделяй и Властвуй)
// MARK: Function for search sum array

func sumArray(_ array: [Int]) -> Int {
    var array = array
    var count = 0
    
    if !array.isEmpty {
        count += array[0]
        array.remove(at: 0)
        count += sumArray(array)
    } else {
        return count
    }
    
    return count
}

// MARK: Function for search biggest value from array

func searcBigest(_ array: [Int]) -> Int {
    var biggest = array[0]
    
    for element in array {
        if biggest < element {
            biggest = element
        }
            
    }
    return biggest
}

func quickSort(_ array: [Int]) -> [Int] {
    var newArray: [Int] = []
    var array = ints

    if array.count < 2 {
        newArray = array
    } else {
        let referenceValue = array[0]
        var less: [Int] = []
        var greater: [Int] = []

        
        array.remove(at: 0)
        
        array.forEach { element in
            if element < referenceValue {
                less.append(element)
            } else {
                greater.append(element)
            }
        }
        newArray = less + [referenceValue] + greater
    }
    
    return newArray
}

let ints = [4, 2, 3, 5, 10, 6, 0]

quickSort(ints)

