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

    @State private var userGuess = ""

    @State var currentOutcome = Outcome.notTested

    @State var history: [TestedChemicals] = []

    @State var selectedOutcomeFilter: Outcome = .notTested
    //MARK: Computer properties
    var body: some View {
        VStack{
            Image(currentChemicals.imageName)
                .resizable()
                .scaledToFit()
            VStack {
                HStack {
                    //MARK: Buttons with strange spacing
                    //MARK: Remember to make the buttons look better
                    //MARK: Remember to change what's showing on the button right now. Change it to A.(Number)
                    // NOTE: Code from lines 33 to 40 were generated using ChatGPT.
                    Button(action: {
                        let userGuessA = "A"
                        userGuess = userGuessA
                        checkGuess()
                        print(userGuess)
                    }, label: {
                        Text("A")
                    })
                    .padding(30)
                    
                    Button(action: {
                        let userGuessB = "B"
                        userGuess = userGuessB
                        print(userGuess)
                        checkGuess()
                    }, label: {
                        Text("B")
                    })
                }
                HStack {
                    //MARK: Remember to make the buttons look better
                    Button(action: {
                        let userGuessC = "C"
                        userGuess = userGuessC
                        print(userGuess)
                        checkGuess()
                    }, label: {
                        Text("C")
                    })
                    .padding(30)
                    
                    Button(action: {
                        let userGuessD = "D"
                        userGuess = userGuessD
                        print(userGuess)
                        checkGuess()
                    }, label: {
                        Text("D")
                    })
                }
            }
        }
    }
    
    func checkGuess() {
        if userGuess == currentChemicals.correctAnswer{
            print("correct")
            currentOutcome = .correct
        } else {
            print("wrong")
            currentOutcome = .incorrect
        }
    }
    
}

#Preview {
    MainView()
}
