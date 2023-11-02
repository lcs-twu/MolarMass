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
                    //MARK: (Number) should come from the function(replace checkGuess)
                    Button(action: {
                        print(userGuess)
                        checkGuess()
                        return userGuess = "A"
                    }, label: {
                        Text("A")
                    })
                    .padding(30)
                    
                    Button(action: {
                        checkGuess()
                    }, label: {
                        Text("B")
                    })
                }
                HStack {
                    //MARK: Remember to make the buttons look better
                    Button(action: {
                        checkGuess()
                    }, label: {
                        Text("C")
                    })
                    .padding(30)
                    
                    Button(action: {
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
