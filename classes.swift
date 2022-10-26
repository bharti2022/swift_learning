// claasses can be used to create custom data type
class DemoClass{

var a = "a",b="b",c="c"
var count = 10

func printCount(){
    print(count)
}

}

let obj1 = DemoClass()

obj1.a = "A"
obj1.b = "B"
obj1.c = "C"

print(obj1.a,obj1.b,obj1.c)
obj1.printCount()

struct demo {
    var hello  = "hello"
}
var structObj = demo()


print(structObj.hello)

// if(obj1 === structObj)