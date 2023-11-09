//
//  Functions.swift
//  MolarMass
//
//  Created by Tom Wu on 2023-11-08.
//

import Foundation

func filtering(originalList: [TestedChemicals], on desiredOutcome: Outcome) -> [TestedChemicals] {
    if desiredOutcome == .Tested {
        return originalList
    }
    
    var filteredResults: [TestedChemicals] = []
    
    for result in originalList {
        if result.outcome == desiredOutcome {
            filteredResults.append(result)
        }
    }
    return filteredResults
}
