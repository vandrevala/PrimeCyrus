import SwiftUI

@main
struct PrimeCyrusApp: App {
    @StateObject var primeFactorsViewModel = PrimeFactorsViewModel()

    var body: some Scene {
        WindowGroup {
            PrimeFactorsView(viewModel: primeFactorsViewModel)
        }
    }
}
