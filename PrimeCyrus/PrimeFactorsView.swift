import SwiftUI

struct PrimeFactorsView: View {
    @ObservedObject private var viewModel: PrimeFactorsViewModel

    init(viewModel: PrimeFactorsViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text("Prime Factors FTW!")
                .font(.title)
                .padding()
            Text("Type in a Number!!!")
                .padding()
            TextField("Your Number...", text: $viewModel.userInput)
                .padding()
            Text(viewModel.formattedListOfPrimes)
                .padding()
        }
    }
}

struct PrimeFactors_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = PrimeFactorsViewModel()
        return PrimeFactorsView(viewModel: viewModel)
    }
}
