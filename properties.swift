class Person {
    var name = ""
}

class BlogPost{
    //properties
    var title:String?
    var body = "hiiii"
    var author:Person?
    var numberOfComments = 0
    
    // computed property
    var fullTitle:String{
        if title != nil && author != nil{
            return title! + " by " + author!.name
        }
        else if title != nil {
            return title!
        }
        else {
            return "no title" 
        }
    }

    // func addComment(){
    //     var comment = "local variable comment"
    
    //     print(body)
    // }
    // func shareArticle(){
    //     print(body)
    // }
    func getCommentsCount ()-> Int {
        return numberOfComments
    }

}

let obj1 = BlogPost()
obj1.title = "namaste"


let obj2 = BlogPost()
obj2.title = "ram ram"

print(obj1.title!,obj2.title!)
print (obj1.fullTitle)

// computed properties example
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
// initialSquareCenter is at (5.0, 5.0)
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// Prints "square.origin is now at (10.0, 10.0)"

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps

// property wrapper

// captialize the string automatically
@propertyWrapper
struct Capitalized {
    
    var wrappedValue: String { 
     didSet  { wrappedValue = wrappedValue.uppercased()}
    }
    init(wrappedValue: String)
    {
        self.wrappedValue = wrappedValue.uppercased()
    }

}
struct User {
    @Capitalized var firstName : String
    @Capitalized var lastName : String
}
var obj = User(firstName: "bharti",lastName: "sagar")

print(obj.firstName,obj.lastName)

//type properties
struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}
enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}
class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}
print(SomeStructure.storedTypeProperty)
// Prints "Some value."
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)
// Prints "Another value."
print(SomeEnumeration.computedTypeProperty)
// Prints "6"
print(SomeClass.computedTypeProperty)
// Prints "27"