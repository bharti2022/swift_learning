struct Grid{
    let grid = [
        [1,1,1,1],
        [2,2,2,2],
        [3,3,3,3],
        [4,4,4,4],
    ]
    subscript(row: Int, col: Int) -> Int? {
        let maxCol = grid.count - 1
        guard col < maxCol, col >= 0 else {
            return nil
        }
        let rowNumbers = grid[col]
        guard row >= 0, row < ( rowNumbers.count - 1) else {
            return nil
        }

        let number = grid[row][col]
        return number
    }
}

let myGrid = Grid()
print(myGrid[1,2] ?? "No value found")
print(myGrid[2,1] ?? "No value found")
print(myGrid[0,0] ?? "No value found")
print(myGrid[0,1] ?? "No value found")

//another example
class daysofaweek {  
   private var days = ["Sunday", "Monday", "Tuesday", "Wednesday",  
      "Thursday", "Friday", "Saturday"] 
      var months = ["jan","feb","march"] 
   subscript(index: Int) -> String {  
      get {  
         return days[index]  
      }  
      set(newValue) {  
         self.days[index] = newValue  
      }  
   }  
}  
var p = daysofaweek()  
print(p[0])  
print(p[1])  
print(p[2])  
print(p[3])  
print(p[4])  
print(p[5])  
print(p[6])  
print(p.months[0])

struct subexample {
   let decrementer: Int
   subscript(index: Int) -> Int {
      return decrementer / index
   }
}
let division = subexample(decrementer: 100)

print("The number is divisible by \(division[9]) times")
print("The number is divisible by \(division[2]) times")