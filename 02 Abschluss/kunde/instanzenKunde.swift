//
//  instanzenKunde.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 13.08.24.
//

import Foundation

let kunde1 = Kunde(kundenNr: "K001", name: "Julia", kontostand: 2350.59, bonuspunkte: 21000, warenkorb: Warenkorb(produkte: [:]))
let kunde2 = Kunde(kundenNr: "K002", name: "Gregor", kontostand: 3160.26, bonuspunkte: 14000, warenkorb: Warenkorb(produkte: [:]))
let kunde3 = Kunde(kundenNr: "K003", name: "Peter", kontostand: 2110.94, bonuspunkte: 18000, warenkorb: Warenkorb(produkte: [:]))

let kundenListe = [
    kunde1,
    kunde2,
    kunde3
]
