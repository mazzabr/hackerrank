import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let aTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

var a: [Int] = aTemp.split(separator: " ").map {
    if let aItem = Int($0) {
        return aItem
    } else { fatalError("Bad input") }
}

guard a.count == n else { fatalError("Bad input") }

// Write your code here
var numberOfSwaps = 0

for _ in 0..<n {
    for index in 0..<n - 1 {
        if a[index] > a[index + 1] {
            a.swapAt(index, index + 1)
            numberOfSwaps += 1
        }
    }

    if numberOfSwaps == 0 {
        break
    }
}

print("Array is sorted in \(numberOfSwaps) swaps.")
print("First Element: \(a.first!)")
print("Last Element: \(a.last!)")
