func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
    let average = (s1 + s2 + s3) / 3
​
    let grade = switch average {
    case 90...100:
        "A"
    case 80...89:
        "B"
    case 70...79:
        "C"
    case 60...69:
        "D"
    default:
        "F"
    }
​
    return grade
}