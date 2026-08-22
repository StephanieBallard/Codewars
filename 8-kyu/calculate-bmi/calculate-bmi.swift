func bmi(_ weight: Int, _ height: Double) -> String {
    let bmi = Double(weight) / (height * height)
​
    switch bmi {
    case ...18.5:
        return "Underweight"
    case ...25.0:
        return "Normal"
    case ...30.0:
        return "Overweight"
    default:
        return "Obese"
    }
}