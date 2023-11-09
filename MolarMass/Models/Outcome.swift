//
//  Outcome.swift
//  MolarMass
//
//  Created by Tom Wu on 2023-11-01.
//

import Foundation
//MARK: thoughts on logic
//MARK: Store as string, press button A return "A"
//MARK: compare the characters
enum Outcome: String {
    case Tested = " "
    case correct = "✅"
    case incorrect = "❎"
}
