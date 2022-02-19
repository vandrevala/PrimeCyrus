public class PrimeFactorsViewModel {
    public init() {}

    public var userInput = ""

    public var formattedListOfPrimes: String {
        if userInput.isEmpty {
            return ""
        } else if let number = Int(userInput) {
            let primes = PrimeFactors().generate(number: number)
            return primes.map{String($0)}.joined(separator: ", ")
        } else {
            return "Your input is bad and you should feel bad."
        }
    }
}
