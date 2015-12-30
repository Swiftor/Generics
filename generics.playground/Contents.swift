
import Foundation

struct Car {
    var make: String
}

struct Owner<T> {
    var name: String
    var firstOwner: T
    var reuseOwner: T
}

let me = Owner(name: "John", firstOwner: Car(make: "Audi"), reuseOwner: Car(make: "BMW"))

let array1 = []                             // NSArray
let array2 = [Int]()                        // Array of type Int
let array3 = Array<Int>()                   // Array of type Int, equivalent syntax with array2
let array4 = Array(arrayLiteral: 1, 2, 3)   // Array of type Int, inferred and also initialized

let ints: [Int: String] = [10: "ten"]
let ages = ["John": 39]                     // Dictionary of type <String, Int> inferred

enum Optional<T> {
    case None
    case Some(T)
}

let employed = Optional<String>.Some("programmer")
let unemployed = Optional<String>.None
if let job = employed {
    print(employed)
} else {
    print(unemployed)
}

func concatenate<A, B>(a: A, _ b: B) -> String {
    return "\(a)\(b)"
}

concatenate("$", 5)
