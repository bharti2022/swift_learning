// ordered does not matter 
//access data by keys not index

var carDB = Dictionary<String, String>()

var carDB2 = [String:String]() //dictionary

var arrExample = [String]()

carDB["firstname"] = "bharti"
carDB["lastname"] = "sagar"

// print(carDB["firstname"]!)
for (key,value) in carDB {
    print(key,value)
}

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]


