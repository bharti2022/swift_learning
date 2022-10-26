struct Celsius {
    var temp: Double
    init(fahrenheit: Double) {
        temp = (fahrenheit-32) / 1.8
    }
    init(kelvin: Double){
        temp = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fahrenheit: 28)
print(boilingPointOfWater)

let freezingPointOfWater = Celsius(kelvin: 283.15)
print(freezingPointOfWater)

struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}
let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)

struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
var x = 0.0, y = 0.0
}
struct Rect{
    var origin = Point ()
    var size = Size()
    init(){}
    init(origin: Point, size: Size){
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size){
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y : originY), size: size)
    }
}
let basicRect = Rect()
let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
print(basicRect)
print(originRect)

//class initializers
class Cake {
    var quantity: Int
    var name: String
    init(cakeQuantity: Int, cakeName: String){ //designated or user define
        self.name = cakeName
        self.quantity = cakeQuantity
    }

    convenience init(cakeName: String ){ //convenience
        self.init(cakeQuantity:1, cakeName: cakeName)
    }
    convenience init(){
        self.init(cakeQuantity:1, cakeName: "Happy")

    }
    

}

var obj = Cake(cakeName: "Happy birthday")

print(obj.quantity,obj.name)

class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
}

class Hoverboard: Vehicle {
    var color: String
    init(color: String) {
        self.color = color
        // super.init() implicitly called here
    }
    override var description: String {
        return "\(super.description) in a beautiful \(color)"
    }
}
let hoverboard = Hoverboard(color: "silver")
print("Hoverboard: \(hoverboard.description)")
// Hoverboard: 0 wheel(s) in a beautiful silver

//failable : check some condition before initialization
struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}
let someCreature = Animal(species: "Giraffe")
// someCreature is of type Animal?, not Animal

if let giraffe = someCreature {
    print("An animal was initialized with a species of \(giraffe.species)")
}
// Prints "An animal was initialized with a species of Giraffe"
let anonymousCreature = Animal(species: "")
// anonymousCreature is of type Animal?, not Animal

if anonymousCreature == nil {
    print("The anonymous creature couldn't be initialized")
}

class Document {
    var name: String?
    // this initializer creates a document with a nil name value
    init() {}
    // this initializer creates a document with a nonempty name value
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}
class AutomaticallyNamedDocument: Document {
    override init() {
        super.init()
        self.name = "[Untitled]"
    }
    override init(name: String) {
        super.init()
        if name.isEmpty {
            self.name = "[Untitled]"
        } else {
            self.name = name
        }
    }
}