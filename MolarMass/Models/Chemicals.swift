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
    Chemicals(word: "Mg(OH)2", imageName: "Mg(OH)2", chemicalDescription: "Magnesium Hydroxide", correctAnswer: "A", AnswerA: "A. 58.3197", AnswerB: "B. 56.3197", AnswerC: "C. 55.3197", AnswerD: "D. 60.3197"),
    Chemicals(word: "Ca(OH)2", imageName: "Ca(OH)2", chemicalDescription: "Calcium Hydroxide", correctAnswer: "B", AnswerA: "A. 73.093", AnswerB: "B. 74.093", AnswerC: "C. 78.093", AnswerD: "D. 70.093"),
    Chemicals(word: "NaCl", imageName: "NaCl", chemicalDescription: "Sodium Chloride", correctAnswer: "A", AnswerA: "A. 58.44", AnswerB: "B. 59.44", AnswerC: "C. 50.44", AnswerD: "D. 51.44"),
    Chemicals(word: "Fe2O3", imageName: "Fe2O3", chemicalDescription: "Iron(III) Oxide", correctAnswer: "D", AnswerA: "A. 154.69", AnswerB: "B. 150.69", AnswerC: "C. 158.69", AnswerD: "D. 159.69"),
    Chemicals(word: "H2O", imageName: "H2O", chemicalDescription: "Water", correctAnswer: "C", AnswerA: "A. 22.0125", AnswerB: "B. 20.0125", AnswerC: "C. 18.0125", AnswerD: "D. 19.0125")
]
