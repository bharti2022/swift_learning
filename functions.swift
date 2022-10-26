//functions
func evenOrOdd(var1:Int) -> Bool{
    if var1 % 2 == 0{
        print("even number")
        return true
    }else
    {
        print("odd number")
        return false
    }
}
var var1 = 3
print(evenOrOdd(var1: var1))

func add(a:Int, b:Int) -> Int{
    return a + b
}
print(add(a:1,b:2))

func sub(arg a:Int,arg1 b:Int) -> Int
{
    return a - b
}
var arg = 4, arg1 = 2
print(sub(arg: arg,arg1: arg1))

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

//in-out param
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

//instance methods
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        self.count = 0
    }
    func decrement(count: Int){
            self.count = self.count - count
    }
}

var obj = Counter()

obj.increment()
print(obj.count)

// change variable values for function level
//add mutating keyword at starting of my function
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")
// Prints "The point is now at (3.0, 4.0)"

//enum example mutating
enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
var ovenLight = TriStateSwitch.low
ovenLight.next()
// ovenLight is now equal to .high
ovenLight.next()
// ovenLight is now equal to .off