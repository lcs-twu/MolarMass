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
        HStack {
            VStack{
                Image(currentChemicals.imageName)
                    .resizable()
                    .scaledToFit()
                
                Text(currentChemicals.chemicalDescription)
                    .padding(20)
                
                VStack {
                    HStack {
                        //MARK: Remember to make the buttons look better
                        // NOTE: Code at line 36 is generated using ChatGPT.
                        Button(action: {
                            let userGuessA = "A"
                            userGuess = userGuessA
                            checkGuess()
                        }, label: {
                            Text(currentChemicals.AnswerA)
                                .font(.title2)
                        })
                        .buttonStyle(.borderedProminent)
                        .padding(30)
                        
                        Button(action: {
                            let userGuessB = "B"
                            userGuess = userGuessB
                            checkGuess()
                        }, label: {
                            Text(currentChemicals.AnswerB)
                                .font(.title2)
                        })
                        .buttonStyle(.borderedProminent)
                        .padding(30)
                    }
                    HStack {
                        //MARK: Remember to make the buttons look better
                        Button(action: {
                            let userGuessC = "C"
                            userGuess = userGuessC
                            checkGuess()
                        }, label: {
                            Text(currentChemicals.AnswerC)
                                .font(.title2)
                        })
                        .buttonStyle(.borderedProminent)
                        .padding(30)
                        
                        Button(action: {
                            let userGuessD = "D"
                            userGuess = userGuessD
                            checkGuess()
                        }, label: {
                            Text(currentChemicals.AnswerD)
                                .font(.title2)
                        })
                        .buttonStyle(.borderedProminent)
                        .padding(30)
                    }
                }
                HStack{
                    Spacer()
                    Button(action: {
                        newChemicals()}
                           , label: {
                        Text("new chemicals")
                            .font(.title2)
                    })
                    .buttonStyle(.borderedProminent)
                    .padding(33)
                }
            }
            VStack{
                Picker("Filtering on", selection: $selectedOutcomeFilter){
                    //what shows in UI and what goes in property
                    Text("Not tested results").tag(Outcome.notTested)
                    Text("Correct").tag(Outcome.correct)
                    Text("Incorrect").tag(Outcome.incorrect)
                }
                .padding()
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
    
    func newChemicals() {
        history.insert(TestedChemicals(chemicals: currentChemicals, optionSelected: userGuess, outcome: currentOutcome), at: 0)
        print(history)
        //reset
        currentChemicals = chemicalsToTest.randomElement()!
        userGuess = ""
        currentOutcome = .notTested
    }
    
}

#Preview {
    MainView()
}
