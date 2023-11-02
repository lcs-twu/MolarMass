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
    let molarMass: String
    let imageName: String
    let chemicalDescription: String
}

let chemicalsToTest = [
    Chemicals(word: "Mg(OH)2", molarMass: "Test", imageName: "replacedLater", chemicalDescription: "Testing"),
//    Chemicals(word: "Ca(OH)2", molarMass: "Test", chemicalDescription: "Testing2")
]
