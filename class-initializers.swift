class Demo {
    var name = ""
    var age = 0
    init() {
        
    }
    init(name: String, age:Int){
        self.name = name
        self.age = age
    }
    init(name:String){
        self.name = name
    }
}

var obj1 = Demo(name:"bharti",age:25)

print(obj1.name)
print(obj1.age)

