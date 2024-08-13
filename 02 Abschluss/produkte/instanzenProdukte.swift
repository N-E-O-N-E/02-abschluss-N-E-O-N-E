//
//  instanzenProdukte.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 13.08.24.
//

import Foundation

let imac_1 = IMac(artikelNr: "IMAC_A001", name: "iMac 8 Core 256 GB", preis: 1599.00, lagerbestand: 13, caseColor: "Blau")
let imac_2 = IMac(artikelNr: "IMAC_A002", name: "iMac 10 Core 256 GB", preis: 1829.00, lagerbestand: 21, caseColor: "Grün")
let imac_3 = IMac(artikelNr: "IMAC_A003", name: "iMac 8 Core 256 GB ", preis: 1599.00, lagerbestand: 0, caseColor: "Pink")
let imac_4 = IMac(artikelNr: "IMAC_A004", name: "iMac 10 Core 512 GB", preis: 2059.00, lagerbestand: 17, caseColor: "Silber")

let macbookair_1 = MacBookAir(artikelNr: "MACBOOKAIR_A001", name: "MacBookAir 13 Zoll, M2, 256 GB", preis: 1199.00, lagerbestand: 34, prozessor: "M2")
let macbookair_2 = MacBookAir(artikelNr: "MACBOOKAIR_A002", name: "MacBookAir 13 Zoll, M2, 512 GB", preis: 1429.00, lagerbestand: 16, prozessor: "M2")
let macbookair_3 = MacBookAir(artikelNr: "MACBOOKAIR_A003", name: "MacBookAir 13 Zoll, M3, 256 GB", preis: 1299.00, lagerbestand: 13, prozessor: "M3")
let macbookair_4 = MacBookAir(artikelNr: "MACBOOKAIR_A004", name: "MacBookAir 15 Zoll, M3, 256 GB", preis: 1599.00, lagerbestand: 0, prozessor: "M3")

let iphone_1 = IPhone(artikelNr: "IPHHONE_A001", name: "iPhone 14 128 GB", preis: 849.00, lagerbestand: 34, speicher: 128)
let iphone_2 = IPhone(artikelNr: "IPHHONE_A002", name: "iPhone 14 256 GB", preis: 979.00, lagerbestand: 27, speicher: 256)
let iphone_3 = IPhone(artikelNr: "IPHHONE_A003", name: "iPhone 15 256 GB", preis: 1079.00, lagerbestand: 11, speicher: 256)
let iphone_4 = IPhone(artikelNr: "IPHHONE_A004", name: "iPhone 15 Plus 256 GB", preis: 1229.00, lagerbestand: 0, speicher: 256)


let produkteListe = [
    imac_1,
    imac_2,
    imac_3,
    imac_4,
    macbookair_1,
    macbookair_2,
    macbookair_3,
    macbookair_4,
    iphone_1,
    iphone_2,
    iphone_3,
    iphone_4,
]
