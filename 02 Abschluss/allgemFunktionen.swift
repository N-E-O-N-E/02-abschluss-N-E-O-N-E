import Foundation

// erzeugt leere Zeilen für einen quasi leeren Screen
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

// Ladeanzeige mit newScreen Aufruf
func ladenAnzeigen() {
    
    print("\n")
    print("\tLOADING...", terminator: " ")
    
    for _ in 1...9 {
        print("  🍏", terminator: "")
        Thread.sleep(forTimeInterval: 0.1)
        print("  🍎", terminator: "")
        Thread.sleep(forTimeInterval: 0.1)
        
    }
    newScreen()
}

func keineGueltigeAuswahl() {
    print("\t❌ Du musst eine gültige Auswahl treffen!")
    sleep(1)
    newScreen()
}


func findeKundeLogin(kundeListe: [Kunde], kundenNr: String, passwort: String) -> Kunde? {
// sucht kunde in der kundenListe
    if let kunde = kundeListe.first(where: { $0.kundenNr == kundenNr }) {
        if kunde.passwort == passwort {
            print("\n\t✅ Hallo \(kunde.name), du wurdest erfolgreich angemeldet.")
            sleep(2)
            return kunde
        } else {
            print("\t❌ Falsches Passwort!")
            return nil
        }
    } else {
        print("\t❌ Kundennummer nicht in der Datenbank gefunden!")
        sleep(2)
        return nil
    }
}

func produkteAnzeigen() {
    
    print("""

         ██████╗ ██████╗  ██████╗ ██████╗ ██╗   ██╗██╗  ██╗████████╗███████╗
         ██╔══██╗██╔══██╗██╔═══██╗██╔══██╗██║   ██║██║ ██╔╝╚══██╔══╝██╔════╝
         ██████╔╝██████╔╝██║   ██║██║  ██║██║   ██║█████╔╝    ██║   █████╗
         ██╔═══╝ ██╔══██╗██║   ██║██║  ██║██║   ██║██╔═██╗    ██║   ██╔══╝
         ██║     ██║  ██║╚██████╔╝██████╔╝╚██████╔╝██║  ██╗   ██║   ███████╗
         ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝
         ═══════════════════════════════════════════════════════════════════
    
    """)
    
    print("     Nr.  Produkt                             Artikel-Nr          Preis       Bestand   Feature             ")
    print("     ═══════════════════════════════════════════════════════════════════════════════════════════════════════")
    
    for (index,i) in produkteListe.enumerated() {
    
        if let iMac = i as? IMac { // (if i is IMac) liefert nur den Typ, kein Zugriff auf spezifische eigenschaften daher ( i as? IMac
            // Greift jetzt auf die eigenschaften des MacBooks zurück
        
            let index_ = String(index + 1).spaltenbreite(laenge: 5)
            let name_ = iMac.name.spaltenbreite(laenge: 35)
            let artikelNr_ = iMac.artikelNr.spaltenbreite(laenge: 20)
            let preis_ = String(iMac.preis).spaltenbreite(laenge: 12)
            let bestad_ = String(iMac.lagerbestand).spaltenbreite(laenge: 10)
            let feature_ = iMac.caseColor.spaltenbreite(laenge: 13)
            
            print("     \(index_)\(name_)\(artikelNr_)\(preis_)\(bestad_)Farbe: \(feature_)")
            
        }
        else if let macBookAir = i as? MacBookAir {
            
            let index_ = String(index + 1).spaltenbreite(laenge: 5)
            let name_ = macBookAir.name.spaltenbreite(laenge: 35)
            let artikelNr_ = macBookAir.artikelNr.spaltenbreite(laenge: 20)
            let preis_ = String(macBookAir.preis).spaltenbreite(laenge: 12)
            let bestad_ = String(macBookAir.lagerbestand).spaltenbreite(laenge: 10)
            let feature_ = macBookAir.prozessor.spaltenbreite(laenge: 13)
            
            print("     \(index_)\(name_)\(artikelNr_)\(preis_)\(bestad_)Prozessor: \(feature_)")
            
        }
        else if let iPhone = i as? IPhone {
            
            let index_ = String(index + 1).spaltenbreite(laenge: 5)
            let name_ = iPhone.name.spaltenbreite(laenge: 35)
            let artikelNr_ = iPhone.artikelNr.spaltenbreite(laenge: 20)
            let preis_ = String(iPhone.preis).spaltenbreite(laenge: 12)
            let bestad_ = String(iPhone.lagerbestand).spaltenbreite(laenge: 10)
            let feature_ = String(iPhone.speicher).spaltenbreite(laenge: 13)
            
            print("     \(index_)\(name_)\(artikelNr_)\(preis_)\(bestad_)Speicher (RAM): \(feature_)")
            
        }
        
    } // endForSchleife
    print()
    
} //endFunc


func captchaBilder() -> String {
// Stellt eine Auswahl an Captcha zur Verfügung für das Login
    
    let bilder = [
        
        ("Katze", """
        
             /\\_/\\
             ( o.o )
              > ^ <
        """),
                
        ("Hund", """
        
               / \\__
              (    @\\___
              /         O
             /   (_____/
            /_____/
        """),
        
        ("Haus", """
    
           ____||____
         ++++++++++++++
        ****************
        |     _   _    |
        |    | |_| |   |
        |    | |_| |   |
        |______________|
    """)
    ]
    
    let auswahl = bilder.randomElement()!
        print(auswahl.1)
        
    return auswahl.0
}

func intro() {
    
    newScreen()
    
    let text = ("""







                "Wir haben immer davon geträumt... Jetzt können wir es bauen. Es ist ziemlich toll."

""")
    
    for char in text {
        print(char, terminator: "")
        Thread.sleep(forTimeInterval: 0.1)
    }
    
    sleep(1)
    print("""

                                                                                Zitat: Steve Jobs
""")
    print("\n\n\n\n\n\n\n\n\n")
    sleep(5)
    newScreen()
}
