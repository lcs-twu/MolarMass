//
//  MainView.swift
//  MolarMass
//
//  Created by Tom Wu on 2023-11-01.
//

import SwiftUI

struct MainView: View {
    // MARK: Stored properties
    @State var currentChemicals = chemicalsToTest.randomElement()!

    @State var userGuess = ""

    @State var currentOutome = Outcome.notTested

    @State var history: [TestedChemicals] = []

    @State var selectedOutcomeFilter: Outcome = .notTested
    //MARK: Computer properties
    var body: some View {
        VStack{
            Image(currentChemicals.imageName)
                .resizable()
                .scaledToFit()
            HStack {
                //MARK: Change this part to button and select
                TextField("Enter the name of the item", text: $userGuess)
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    MainView()
}
