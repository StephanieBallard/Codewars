import Foundation
​
enum MenuItem: String, CaseIterable {
    case burger
    case fries
    case chicken
    case pizza
    case sandwich
    case onionrings
    case milkshake
    case coke
}
​
func getOrder(_ input: String) -> String {
    var order = ""
​
    for item in MenuItem.allCases {
        let count = input.components(separatedBy: item.rawValue).count - 1
        order += String(repeating: "\(item.rawValue.capitalized) ", count: count)
    }
​
    return order.trimmingCharacters(in: .whitespaces)
}