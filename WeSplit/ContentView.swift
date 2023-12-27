// NAME: WeSplit
// AUTHOR: Mohammad Abuosbie
// DESCRIPTION:
//  A check-splitting app. Users need to be able to enter the cost of their check, how many people are sharing the cost, and how much tip they want to leave.

import SwiftUI

struct ContentView: View {
    let tipPercentages = [10, 15, 20, 25, 0]

    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }.pickerStyle(.navigationLink)
                }
            }.navigationTitle("WeSplit")
        }
    }
}

#Preview {
    ContentView()
}
