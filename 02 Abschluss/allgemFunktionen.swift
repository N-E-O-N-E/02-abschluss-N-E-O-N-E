//
//  allgemFunktionen.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 19.08.24.
//

import Foundation

func newScreen() {
    for _ in 1...100
    {
        print("\n")
    }
}

func beliebigetaste() {
    print("\t▶︎ Weiter mit beliebiger Taste...", terminator: " ")
    let _ = readLine()
    
}

func ladenAnzeigen() {
    for _ in 1...15 {
        print("    🟡", terminator: "")
        Thread.sleep(forTimeInterval: 0.1)
    }
    newScreen()
}
