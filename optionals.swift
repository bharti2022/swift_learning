class Person {
    var name = ""
}

class BlogPost{
    var title:String?
    var body = "hiiii"
    var author:Person?
    var numberOfComments = 0

}

let obj1 = BlogPost()
print(obj1.body + "hello")

obj1.title = "greetings from bharti"
//optional binding
if let actualTitle = obj1.title {

    print(actualTitle + " salutation")

}

//forced unwrapping (not good practice)
print(obj1.title!)

//testing for nil
if obj1.title == nil {
  //optional contains no value
}
else{
    print(obj1.title!)
}
