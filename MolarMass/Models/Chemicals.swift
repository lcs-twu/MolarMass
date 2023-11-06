//
//  Chemicals.swift
//  MolarMass
//
//  Created by Tom Wu on 2023-11-01.
//

import Foundation

//store the chemicals being tested
struct TestedChemicals: Identifiable {
    let id = UUID()
    //store chemicals
    let chemicals: Chemicals
    //user select option
    let optionSelected: String
    //correct or not
    let outcome: Outcome
}

struct Chemicals: Identifiable {
    let id = UUID()
    let word: String
//    let molarMass: String
    let imageName: String
    let chemicalDescription: String
    let correctAnswer: String
    let AnswerA: String
    let AnswerB: String
    let AnswerC: String
    let AnswerD: String
}

let chemicalsToTest = [
    Chemicals(word: "Mg(OH)2", imageName: "replacedLater", chemicalDescription: "Testing", correctAnswer: "A", AnswerA: "A. 58.3197", AnswerB: "B. 56.3197", AnswerC: "C. 55.3197", AnswerD: "D. 60.3197"),
    Chemicals(word: "Ca(OH)2", imageName: "replacedLater2", chemicalDescription: "Testing2", correctAnswer: "B", AnswerA: "A. 73.093", AnswerB: "B. 74.093", AnswerC: "C. 78.093", AnswerD: "D. 70.093")
]
