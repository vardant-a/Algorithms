// MARK: Грокаем алгоритмы

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

var arrayInt: [Int] = []

for x in 1...200 {
    arrayInt.append(x)
}
arrayInt.sort { $0 < $1 }

binarySearch(arrayInt, item: 80)

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

let arrayInt2: [Int] = [7, 8, 3, 9]
print(seletionSort(arrayInt2))

// MARK: - Глава 3. Рекурсия
// MARK: Method recursion

func subtraction(_ value: Int) {
    var value = value
    print(value)
    
    if value != 0 {
        value -= 1
        subtraction(value)
    }
}

subtraction(10)
