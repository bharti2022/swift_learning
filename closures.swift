let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

var reversedNames = names.sorted(by: {
    (s1: String, s2: String) -> Bool in
    return s1 < s2
})

print(reversedNames)

reversedNames = names.sorted(by: { $0 > $1 } )

print(reversedNames)

let printText = { print("hello print text") }

print(printText())

func sayHello(name: String, closurePass: (String)->()){

let myName = name.uppercased()

closurePass(myName)

}

sayHello(name: "bharti")
{   name in print("Hello \(name)")
}

let hello = { (name:String) -> String in "hello"

}

//trailing closures
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel() {
    print("I'm driving in my car")
}

