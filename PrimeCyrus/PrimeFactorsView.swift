import SwiftUI

struct PrimeFactorsView: View {
    @State var number: String = ""

    var body: some View {
        VStack {
            Text("Prime Factors FTW!")
                .font(.title)
                .padding()
            Text("Type in a Number!!!")
                .padding()
            TextField("Your Number...", text: $number)
                .padding()
            Text("RESULTS!")
                .padding()
        }
    }
}

struct PrimeFactors_Previews: PreviewProvider {
    static var previews: some View {
        PrimeFactorsView()
    }
}
