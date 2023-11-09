//
//  Functions.swift
//  MolarMass
//
//  Created by Tom Wu on 2023-11-08.
//

import Foundation

func filtering(originalList: [TestedChemicals], on desiredOutcome: Outcome) -> [TestedChemicals] {
    if desiredOutcome == .notTested {
        return originalList
    }
    
    var filteredResults: [TestedChemicals] = []
    
    for result in filteredResults {
        if result.outcome == desiredOutcome {
            filteredResults.append(result)
        }
    }
    return filteredResults
}
