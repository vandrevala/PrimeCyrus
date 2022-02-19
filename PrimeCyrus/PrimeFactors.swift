public class PrimeFactors {

    public init() {}

    public func generate(number: Int) -> [Int] {
        if number < 2 {
            return []
        }
        var factors: [Int] = []
        var remainder = number
        for candidate in 2...number {
            while remainder % candidate == 0 {
                factors.append(candidate)
                remainder /= candidate
            }
        }
        return factors
    }
}
