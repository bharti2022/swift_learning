var letters = Set<Character>()
letters.insert("A")
letters.insert("B")
letters.insert("C")
letters.insert("D")
letters.insert("A")
//cannot insert duplicate values

for  item in letters{
    print(item)
}

var favGenres: Set<String> = ["a", "b", "c", "d"]

for item in favGenres.sorted(){
    print (item)
}

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]

let primeNum: Set = [2,3,5,7]

print(oddDigits.union(evenDigits).sorted())

print(oddDigits.intersection(evenDigits).sorted())

print(oddDigits.symmetricDifference(primeNum).sorted())