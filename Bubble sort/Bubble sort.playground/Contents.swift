import UIKit


//MARK: - Note : Using inout keyword to tell swift to not make a copy of array instead we will get original address of array so we can sort it in original place, means array will get sorted in same place and we won't get any copy of it. -

func BulbbleSort(_ arr: inout [Int]) {
    //array length
    let arrLenght = arr.count
    
    //return early if array has only one element
    guard arrLenght > 1 else {
        return
    }
    
    // looping in revered order to get last index
    for endIndex in (1..<arrLenght).reversed() {
        //loop from 0 to end index
        for index in 0..<endIndex {
            //check if arr[0] is greater the arr[1] index? if yes, then swipe or skip
            if arr[index] > arr[index + 1] {
                //swipe values
                arr.swapAt(index, index + 1)
            }
        }
    }
}

var arr = [50,30,40,1,5,0]
BulbbleSort(&arr)

print(arr)
