// arrays = a collection of data ordered by indexes

var a = "dog"
var b = "bird"
var c = "cat"

var arr = ["dog", "cat", "bird"]

print(arr[0])

for item in arr {
  print("my " + item)
}

var arr2 = [String]()

arr = arr + ["snake","owl"]

arr.remove(at: 2)


arr[0] = "turtle"

print(arr)

print(arr.count)

for (index, value) in arr.enumerated() {
  print("Item \(index) : \(value)")
}
