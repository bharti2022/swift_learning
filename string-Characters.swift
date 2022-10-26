let multiLineString = """
this is just an long line so that we can check the use of triple quatation marks
this is second line
    this  is third line with tab space

"""
print(multiLineString)

//escape 

let singleLineString = "hello hi... \"\"hello\"\" "
print(singleLineString)

var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"

let constantString = "Highlander"
// constantString += " and another Highlander"
// this reports a compile-time error - a constant string cannot be modified

for character in singleLineString {
    print(character)
}

//characters type annnotation

let excalamationMark: Character = "!"

let charArray :[Character] = ["a", "b", "c"]

let charArray2 = String(charArray)

print(charArray2)

//unicode

print("\u{1F425}")

//string indices
let greeting = "welcome"
print(greeting[greeting.startIndex])
print(greeting[greeting.index(before: greeting.endIndex)])
print(greeting[greeting.index(after:greeting.startIndex)])
// print(greeting[greeting.endIndex])

var greet = "welcome"
greet.insert(contentsOf: "!!", at: greet.endIndex)

greet.remove(at: greet.index(before: greet.endIndex))
print(greet)

//substrings

var subString = greet.firstIndex(of: "e") ?? greet.endIndex

print(subString)

// Prefix and Suffix Equality
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")
// Prints "There are 5 scenes in Act 1"

var act2Scenes = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 2 "){
        act2Scenes+=1
    }
}

print("act2 scenes are \(act2Scenes)")


