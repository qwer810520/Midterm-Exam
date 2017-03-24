func sortArray(array1:[Int], array2:[Int]) -> [Int] {
   let array = array1 + array2
    let set = Set(array)
    var newArray = Array(set)
    var x = true
    
    while x {
        x = false
        for i in 0..<newArray.count - 1 {
            if newArray[i] > newArray[i + 1] {
                let number = newArray[i + 1]
                newArray.remove(at: i + 1)
                newArray.insert(number, at: i)
                x = true
            }
        }
    }
    
    return newArray
}
    


sortArray(array1: [1,5,3], array2: [2,4,3])