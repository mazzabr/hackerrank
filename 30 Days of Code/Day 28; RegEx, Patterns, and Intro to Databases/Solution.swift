import Foundation

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var firstNameList = [String]()

for NItr in 1...N {
    guard let firstMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
    let firstMultipleInput = firstMultipleInputTemp.split(separator: " ").map{ String($0) }

    let firstName = firstMultipleInput[0]

    let emailID = firstMultipleInput[1]
    
    let range = NSMakeRange(0, emailID.count)
        let regex = try! NSRegularExpression(pattern: "[a-z]@gmail.com")

        if regex.firstMatch(in: emailID, range: range) != nil {
            firstNameList.append(firstName)
        }
}

for name in firstNameList.sorted() {
    print(name)
}
