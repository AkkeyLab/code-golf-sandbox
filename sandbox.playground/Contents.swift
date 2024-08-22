import UIKit

let message = "ABCD123"
let reversedMessage = String(message.reversed())
let asc = String(message.sorted())
let desc = String(message.sorted(by: { $0 > $1 }))
let max = String(message.max()!)
let min = String(message.min()!)
let number = message.components(separatedBy: .decimalDigits.inverted).joined()
let numberSum = Array(number).map(String.init).compactMap(Int.init).reduce(.zero, +)

let m2 = "abcdcba"
let isPalindrome = m2 == String(m2.reversed())
let set = String(Set(m2))
let lower = m2.lowercased()
let upper = m2.uppercased()
let check = lower.caseInsensitiveCompare(upper) == .orderedSame
let jp = lower.localizedCaseInsensitiveCompare("ａｂｃｄｃｂａ") == .orderedSame

let numbers = [1, 2, 3, 4, 5]
let average = Double(numbers.reduce(.zero, +)) / Double(numbers.count)
let sum = numbers.reduce(.zero, +)
let even = sum % 2 == .zero
let x2 = numbers.map(Double.init).map { pow($0, 2) }
let evenList = [2, 4, 6, 8, 10]
let union = Set(numbers).union(Set(evenList)).sorted() // 1, 2, 3, 4, 5, 6, 8, 10
let substracting = Set(numbers).subtracting(Set(evenList)).sorted() // 1, 3, 5
let intersection = Set(numbers).intersection(Set(evenList)).sorted() // 2, 4
let sdiff = Set(numbers).symmetricDifference(Set(evenList)).sorted() // 1, 3, 5, 6, 8, 10
let first3 = numbers[0..<3]
let first2 = numbers.prefix(2).map { $0 }
let last2 = numbers.suffix(2).map { $0 }
let dropFirst = numbers.dropFirst(2).map { $0 }
let dropLast = numbers.dropLast(2).map { $0 }

let hello = "how is everything?"
let capitalize = hello.capitalized
let length = hello.count
let lengthWithoutSpace = hello.replacingOccurrences(of: " ", with: "").count
let words = hello.split(separator: " ")

// 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
// ~~~~  |  |  |
//   + = 1  |  |
//    ~~~~  |  |
//      + = 2  |
//       ~~~~  |
//         + = 3
var fib: (Int) -> Int = { n in
    guard n >= 2 else {
        return n // must be at least two
    }
    return fib(n - 1) + fib(n - 2)
}
fib(5)

// 5! = 5x4x3x2x1
var factorial: (Int) -> Int = { n in
    (1...n).reduce(1, *)
}
factorial(5)

while let i = readLine() {
    print(pow(Double(abs(Int(i)!)), 2))
}

while let i = readLine() {
    print(i.components(separatedBy: " ").map { Int($0)! }.reduce(0, +))
}
while let i = readLine() {
    print(i.split(separator: " ").reduce(0) { $0 + Int($1)! })
}

while let n = Int(readLine() ?? "") {
    print(n % 400 == 0 || n % 4 == 0 && n % 100 != 0 ? "Yes" : "No")
}
while let n = Int(readLine() ?? "") {
    print(((n % 100 == 0 && n % 400 != 0) || n % 4 != 0) ? "No" : "Yes")
}
while let n = Int(readLine() ?? "") {
    print(n % 400 == 0 || n % 4 == 0 && n % 100 != 0 ? "Yes" : "No")
}

while let s = readLine() {
    let a = s.split(separator: " ").map { String($0).sorted() }
    print(a[0] == a[1] ? "Yes" : "No")
}
while let a = readLine()?.split(separator: " ").map { String($0).sorted() } {
    print(a[0] == a[1] ? "Yes" : "No")
}
while let a = readLine()?.split(separator: " ").map { String($0).sorted() } {
    print(Set(a).count == 1 ? "Yes" : "No")
}
while let a = readLine()?.split(separator: " ").map { $0.sorted() } {
    print(Set(a).count == 1 ? "Yes" : "No")
}
while let a = readLine()?.split(separator: " ").map { $0.sorted() } {
    print(a[0] == a[1] ? "Yes" : "No")
}
while let a = readLine()?.split { $0 == " " }.map { $0.sorted() } {
    print(a[0] == a[1] ? "Yes" : "No")
}

let n = "banana"
var r = [String: Int]()
n.map { String($0) }.forEach {
    r[$0] = (r[$0] ?? 0) + 1
}
print(r.sorted(by: { $0.value > $1.value }).map(\.key).joined())

while let s = readLine() {
    typealias S = [String]
    var g = S(), k = S()
    s.map(String.init).enumerated().forEach {
        $0 % 2 == 0 ? g.append($1) : k.append($1)
    }
}

while let r = readLine()?.split(separator: " ").map { Int($0)! } {
    print("\(r.max()!) \(r.min()!)")
}
while let r = readLine()?.split(separator: " ").map { Int($0)! }.sorted() {
    print("\(r.last!) \(r[0])")
}
while let r = readLine()?.split { $0 == " " }.map { Int($0)! } {
    print("\(r.max()!) \(r.min()!)")
}
