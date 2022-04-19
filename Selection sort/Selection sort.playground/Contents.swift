import UIKit

//MARK : - Selection sort
/// Inout as susual for not making copy of array;
/// -

func selectionSort(_ arr: inout [Int]) {    // Inout as susual for not making copy of array;
    let arrLength = arr.count               // array lenght set to new variable called arrLenght
    guard arrLength > 1 else { return }     // if only one value in array than exit
    
    for x in 0..<arrLength {            //as susual looping thru array
        var lowest = x                  // setting lowest value
        for y in x + 1..<arrLength {    // second loop with x + 1 value that is array second index value.
            if arr[y] < arr[lowest] {   // comparing array second element is less than first element or not
                lowest = y              // if true then set second element as lowest value
            }
        }
        if x != lowest {                // check if x and lowest value are same bcz if y value is lowest then                                       lowest value will change
            arr.swapAt(x, lowest)       // if not same then swap.
        }
    }
}


var arr = [50,30,40,3,5,1,0]


selectionSort(&arr)
print(arr)
