class Car{
    var topSpeed = 200
    func drive(){
        print("driving car at \(topSpeed)")
    }
}
class FutureCar : Car{
    // var topSpeed  = 250
    // func drive(){
    //     print("driving at \(topSpeed)")
    // }
    override func drive(){
        // super.drive() //if u want to add additional functionality
        print("drive at \(topSpeed + 50)")
    }
    func fly(){
        print("future can drive also")
    }

}



let ride1 = Car()
ride1.drive()
let flyRide = FutureCar()
flyRide.fly()
flyRide.drive()

