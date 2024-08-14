//
//  structWarenkorb.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation

struct Warenkorb {
    
    var produkte: [String: Int] = [:]
    var geschenk: [Geschenk] = []
    let geschenkGrenzen = (1000.00, 1500.00, 2000.00)
    
    mutating func hinzufuegen(artikelNr: String, mengeNeu: Int) {
           
                if let menge = produkte[artikelNr] {
                    produkte[artikelNr] = menge + mengeNeu
                } else {
                    produkte[artikelNr] = mengeNeu
                }
            }
    
    mutating func geschenkOption(warenkorbWert: Double) {
        
        if warenkorbWert >= geschenkGrenzen.0 {
            geschenkHinzu(geschenk: geschenk_1)
        }
        else if warenkorbWert >= geschenkGrenzen.1 {
            geschenkHinzu(geschenk: geschenk_2)
        }
        else if warenkorbWert >= geschenkGrenzen.2 {
            geschenkHinzu(geschenk: geschenk_3)
        }
        
    }
    
    mutating func geschenkHinzu(geschenk: Geschenk) {
        
        print("Super, ein Geschenk 🎁 wurde deinem Warenkorn hinzugefügt!")
        geschenk.anzeigen()
        
    }
    
    // Empfängt ein Array vom Typ Produkt und eine String ArtikelNr. Liefert ein Produkt oder nil zurück.
    func findeArtikel(liste: [Produkt], artikelnummer: String) -> Produkt? {
        // Gibt das erste Element im Array zurück bei dem die übergebene Arikelnummer der "artikelNr" in der Liste (Array) entspricht.
        return liste.first { $0.artikelNr == artikelnummer }
    }
    
    
    func gesamtpreis(liste: [Produkt]) -> Double {
        var gesamtsumme = 0.0
        
        // durchläuft alle Artikelnummern, Mengen in den Produkten des Warenkorbes
        for (artikelnummer, menge) in produkte {
            
            // speichert den gefundenen Artikel vom Typ Produkt in match
            if let match = findeArtikel(liste: liste, artikelnummer: artikelnummer) {
                gesamtsumme += match.preis * Double(menge)
            } else {
                print("Produkt ArtikelNr. \(artikelnummer), nicht gefunden!")
            }
            
        }
        
        return gesamtsumme
    
    }
    
    func anzeigen(aktiverKunde: Kunde) {
        
        print("""



















    ███████╗██╗  ██╗ ██████╗ ██████╗ ██████╗ ██╗███╗   ██╗ ██████╗      ██████╗ █████╗ ██████╗ ████████╗
    ██╔════╝██║  ██║██╔═══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝     ██╔════╝██╔══██╗██╔══██╗╚══██╔══╝
    ███████╗███████║██║   ██║██████╔╝██████╔╝██║██╔██╗ ██║██║  ███╗    ██║     ███████║██████╔╝   ██║
    ╚════██║██╔══██║██║   ██║██╔═══╝ ██╔═══╝ ██║██║╚██╗██║██║   ██║    ██║     ██╔══██║██╔══██╗   ██║
    ███████║██║  ██║╚██████╔╝██║     ██║     ██║██║ ╚████║╚██████╔╝    ╚██████╗██║  ██║██║  ██║   ██║
    ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝      ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝
    ════════════════════════════════════════════════════════════════════════════════════════════════════

""")
        
        if produkte.isEmpty {
            print("  🔴 Der Warenkornb ist leer!")
        } else {
            print("    \(aktiverKunde.name), dein Warenkorb enthällt aktuell:")
            
            for (artikelkNr, menge) in produkte {
                let produktMatch = findeArtikel(liste: produkteListe, artikelnummer: artikelkNr)
                print("""

    Produkt:     \(produktMatch?.name ?? "Fehler")
    Stückpreis:  \(produktMatch?.preis ?? 0) €
    Menge:       \(menge) Stück
    Gesamt:      \((produktMatch!.preis) * Double(menge)) €
    Artikel-Nr:  \(artikelkNr)

""")
            }
        }
        
        let warenWert = aktiverKunde.warenkorb.gesamtpreis(liste: produkteListe)
        print("\n   💰 Gesamtwert deines Warenkorbes: \(String(format: "%.2f",warenWert)) EUR")
        print("\n   🔸 Aktuell hast du \(aktiverKunde.bonuspunkte) Bonuspunkte (\(aktiverKunde.bonuspunkte / 1000) €)")
        
        //geschenkOption(warenkorbWert: warenWert ?? 0.00)
        
        
        //aktiverKunde?.bonuspunkteAktualisieren(betrag: warenWert!)
        // Bonuspunkte bei bestellabschluß ändern!
        
    }
    
}
