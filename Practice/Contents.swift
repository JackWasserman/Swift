import UIKit

/* Learning Swift Practice */

//Part 1

22 / 7

22.0/7.0

25%10

28 % 10

(28.0).truncatingRemainder(dividingBy: 10.0)

10 / 0.5 + 0.5

10 / (0.5 + 0.5)

sin(45 * Double.pi / 180)

print(Double.pi)

sqrt(2)

max(6,9)
min(6,9)

//Constant declaration
let number: Int = 10

let pi: Double = 3.14159

//Cannot edit constants like so,
//number = 0

//Variable declaration
var myNumber: Int = 30
print("My number should equal 30\n")

print("myNumber: " + String(myNumber))

myNumber += 2

print("myNumber: " + String(myNumber))

var 🐶💩: Int = -1



var counter: Int = 0
counter = counter + 1
counter *= 3

//Part 2: Types

//Convert double to int
var myInteger: Int = 100
var myDecimal: Double = 12.5
myInteger = Int(myDecimal)

let hourlyRate: Double = 19.5
let hoursWorked: Int = 10
let totalCost: Double = hourlyRate * Double(hoursWorked)

//Shorthand type (infers type based off value)
let myInferredInt = 42
let wantDouble = Double(3)

//Uses key value "as" which perfroms a type conversion
let wantAnotherDouble = 3 as Double

let wantBestDouble = 3.0

//Strings in Swift

let characterA = Character("a")
let characterDog = Character("🐶")

let stringDog: String = "Dog"
let stringDog2 = "Dog2"

print("stringDog: " + stringDog)

print(characterDog)

//Concatenation

var message = "Hello" + " my name is "
let name = "Jack"

message += name


//Add character to string

let exclamationMark = Character("!")

message += String(exclamationMark)

//Interpolation

let messageInOne = "Hello my name is \(name)!"

let oneThird = 1.0/3.0

let oneThirdLongString = "One third is \(oneThird) as a decimal"

//Multi-line Strings

let bigString = """
    You can have a string
    that contains multiple
    lines
    by
    doing this.
    """
print(bigString)


//Tuples

//A tuple is a type that represents data composed of more than one value of any type

let coordinate: (Int, Int) = (2,3)

let coordinateTest = (2, 3)

let coordinatesMixed = (6.9, 10)

//Access elements in tuple
let x1 = coordinatesMixed.0
let y1 = coordinatesMixed.1

let coordinatesNamed = (x: 2, y: 5.5)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

//Shorthand access

let coordinates3D = (x: 1, y: 2, z: 3)
let (x3, y3, z3) = coordinates3D
let coordinates3DString = "x3: " + String(x3) + "\ny3: " + String(y3) + "\nz3: " + String(z3)

print(coordinates3DString)


//Ignore an element in a tuple with _ aka wildcard operator

let (x4, _, z4) = coordinates3D

print(x4)
print(z4)

let a4: UInt8 = 4

//Part 3: Flow Control
let yes = true
let no = false

let doesOneEqualTwo = (1 == 2)

let doesOneNotEqualTwo = (1 != 2)

let alsoTrue = !(1 == 2)

let isOneGreaterThanTwo = (1 >= 2)

let andOr = (1 < 2 && 3 > 4) || 1 < 4

//String equality
var guess = "dog"
var guessEqualsCat = guess == "cat"
print(guessEqualsCat)
guess = "cat"
guessEqualsCat = guess == "cat"
print(guessEqualsCat)

//Checks if one string comes before another alphabetically
let order = "cat" < "dog"

//If statement

if 2 > 1 {
    print("Yes, two is greater than one")
}

let animal = "Fox"

if animal == "Cat" || animal == "Dog" {
    print("Animal is a house pet.")
} else {
    print("Animal is not a house pet.")
}

let hourOfDay = 13
var timeOfDay = ""

if hourOfDay < 6 {
    timeOfDay = "Early morning"
} else if hourOfDay < 12 {
    timeOfDay = "Morning"
} else if hourOfDay < 17 {
    timeOfDay = "Afternoon"
} else if hourOfDay < 20 {
    timeOfDay = "Evening"
} else if hourOfDay < 24 {
    timeOfDay = "Late evening"
} else {
    timeOfDay = "INVALID HOUR!"
}
print(timeOfDay)


var jack = 90 / 40
var modTest = 90 % 40


var hoursWorkedPerWeek = 45
let ratePerHour = 25
let ratePerHourOT = 50
let payPerFortyHours = ratePerHour * 40
var totalPay = 0

if hoursWorkedPerWeek > 40 {
    let overtimeHours = hoursWorkedPerWeek - 40
    totalPay += overtimeHours * ratePerHourOT
    hoursWorkedPerWeek -= overtimeHours
}
totalPay += ratePerHour * hoursWorkedPerWeek
print("Total pay: " + String(totalPay))

//Ternary operator example

let ab = 5
let cd = 10

let min2: Int

if ab < cd {
    min2 = ab
} else {
    min2 = cd
}
print("min2: " + String(min2))

let a = 5
let b = 10
let minTern = a < b ? a : b

//Loops

//repeat-while loop (Condition evaled at end of the loop instead

var sum = 1
repeat {
    sum += (sum + 1)
} while sum < 1000
print(sum)

//Breaking out

var sum2 = 1

while true {
    sum2 = sum2 + (sum2 + 1)
    if sum2 >= 1000 {
        break
    }
}

//Ranges
let closedRange = 0...5

let halfOpenRange = 0..<5

let loopCount = 10
var loopSum = 0

for i in 1...loopCount {
    loopSum += i
}
print(loopSum)

sum = 1
var lastSum = 0

for _ in 0..<loopCount {
    let temp = sum
    sum = sum + lastSum
    lastSum = temp
}

sum = 0
for i in 1...loopCount where i % 2 == 1 {
    sum += i
}

//Continue example
sum = 0

for row in 0..<8 {
    if row % 2 == 0 {
        continue
    }
    
    for column in 0..<8 {
        sum += row * column
    }
}
print(sum)

//Switch Statements

let numb = 10

switch numb {
case 0:
    print("Zero")
default:
    print("Non-zero")
}

let stringAnimal = "Dog"

switch stringAnimal {
case "Cat", "Dog":
    print("Animal is a house pet.")
default:
    print("Animal is not a house pet.")
}

//let-where syntax means the case will match only when a certain condition is true
switch number {
case let x where x % 2 == 0:
    print("Even")
default:
    print("Odd")
}

switch number {
case _ where number % 2 == 0:
    print("Even")
default:
    print("Odd")
}

let coordinatesSwitch = (x: 1, y: 1, z: 5)

switch coordinatesSwitch {
case (0, 0, 0): // 1
    print("Origin")
case (_, 0, 0): // 2
    print("On the x-axis.")
case (0, _, 0): // 3
    print("On the y-axis.")
case (0, 0, _): // 4
    print("On the z-axis.")
default:        // 5
    print("Somewhere in space")
}

switch coordinatesSwitch {
case (0, 0, 0):
    print("Origin")
case (let x, 0, 0):
    print("On the x-axis at x = \(x)")
case (0, let y, 0):
    print("On the y-axis at y = \(y)")
case (0, 0, let z):
    print("On the z-axis at z = \(z)")
case let (x, y, z):
    print("Somewhere in space at x = \(x), y = \(y), z = \(z)")
}

switch coordinatesSwitch {
case let (x, y, _) where y == x:
    print("Along the y = x line.")
case let (x, y, _) where y == x * x:
    print("Along the y = x^2 line.")
default:
    break
}
