//
//  instanzenKunde.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 13.08.24.
//

import Foundation

let kunde1 = Kunde(kundenNr: "K001", name: "Julia Hoffmann", passwort: "123", kontostand: 2350.59, bonuspunkte: 21000, warenkorb: Warenkorb(produkte: [:], geschenk: []))
let kunde2 = Kunde(kundenNr: "K002", name: "Gregor Schönberg", passwort: "123", kontostand: 3160.26, bonuspunkte: 14000, warenkorb: Warenkorb(produkte: [:], geschenk: []))
let kunde3 = Kunde(kundenNr: "K003", name: "Peter Kaufmann", passwort: "123", kontostand: 2110.94, bonuspunkte: 18000, warenkorb: Warenkorb(produkte: [:], geschenk: []))

let kundenListe = [
    kunde1,
    kunde2,
    kunde3
]
