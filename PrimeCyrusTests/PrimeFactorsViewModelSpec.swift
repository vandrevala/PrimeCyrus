import Nimble
import PrimeCyrus
import Quick

class PrimeFactorsViewModelSpec: QuickSpec {
    override func spec() {
        describe("The formatted list of primes") {
            it("starts empty") {
                let primeFactorsViewModel = PrimeFactorsViewModel()

                expect(primeFactorsViewModel.formattedListOfPrimes).to(equal(""))
            }

            it("shows just a single number when the number is prime") {
                let primeFactorsViewModel = PrimeFactorsViewModel()

                primeFactorsViewModel.userInput = "5"

                expect(primeFactorsViewModel.formattedListOfPrimes).to(equal("5"))
            }

            it("shows two numbers when factoring 4") {
                let primeFactorsViewModel = PrimeFactorsViewModel()

                primeFactorsViewModel.userInput = "4"

                expect(primeFactorsViewModel.formattedListOfPrimes).to(equal("2, 2"))
            }

            it("shows an error when the input is not a number") {
                let primeFactorsViewModel = PrimeFactorsViewModel()

                primeFactorsViewModel.userInput = "lulz I am so funny"

                expect(primeFactorsViewModel.formattedListOfPrimes).to(equal("Your input is bad and you should feel bad."))
            }
        }
    }
}
