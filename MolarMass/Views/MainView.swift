//
//  MainView.swift
//  MolarMass
//
//  Created by Tom Wu on 2023-11-01.
//

import SwiftUI

var currentChemicals = chemicalsToTest.randomElement()!

var userGuess = ""

var currentOutome = Outcome.notTested

var history: [TestedChemicals] = []

var selectedOutcomeFilter: Outcome = .notTested

struct MainView: View {
    var body: some View {
        Text("Testing")
    }
}

#Preview {
    MainView()
}
