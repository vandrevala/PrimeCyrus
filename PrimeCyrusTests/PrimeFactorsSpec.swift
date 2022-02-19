import Nimble
import PrimeCyrus
import Quick

class PrimeFactorsSpec: QuickSpec {
    override func spec() {
        describe("Generating primes") {
            func factors(of number: Int) -> [Int] {
                return PrimeFactors().generate(number: number)
            }

            it("is empty for 1") {
                expect(factors(of: 1)).to(equal([]))
            }

            it("returns the prime factors for 2") {
                expect(factors(of: 2)).to(equal([2]))
            }

            it("returns the prime factors for 3") {
                expect(factors(of: 3)).to(equal([3]))
            }

            it("returns the prime factors for 4") {
                expect(factors(of: 4)).to(equal([2, 2]))
            }

            it("returns the prime factors for 6") {
                expect(factors(of: 6)).to(equal([2, 3]))
            }

            it("returns the prime factors for 8") {
                expect(factors(of: 8)).to(equal([2, 2, 2]))
            }

            it("returns the prime factors for 9") {
                expect(factors(of: 9)).to(equal([3, 3]))
            }

            it("factors a number with lots of primes") {
                expect(factors(of: 2 * 2 * 3 * 5 * 5 * 7 * 11)).to(equal([2, 2, 3, 5, 5, 7, 11]))
            }
        }
    }
}
