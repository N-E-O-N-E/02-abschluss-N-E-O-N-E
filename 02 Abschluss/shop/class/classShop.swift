//
//  classShop.swift
//  02 Abschluss
//
//  Created by Markus Wirtz on 12.08.24.
//

import Foundation

class Shop {
    
    let produkte: [Produkt]
    let kunden: [Kunde]
    let status: ShopStatus
    
    init(produkte: [Produkt], kunden: [Kunde], status: ShopStatus) {
        self.produkte = produkte
        self.kunden = kunden
        self.status = status
    }
    
    func produkteAnzeigen() {
        
        print("Aktuell haben wir folgende Artikel in unserem Shop: \n")
        
        for (index,i) in produkteListe.enumerated() {
            print("Nr. \(index + 1 ))\tArt.Nr: \(i.artikelNr), Produktname: \(i.name), Preis: \(i.preis) EUR, Bestand: \(i.lagerbestand) Stk")
        }
     
        print()
        
    }
    
    func beliebigetaste() {
        print("Weiter mit beliebiger Taste...")
        let _ = readLine()
    }
    
    func menueAnzeigen() {
        
        print("""

    AppleStore - Hauptmenü
    -------------------------

    1) Kundenkonto anzeigen
    2) Produkte auswählen
    3) Warenkorb anzeigen
    4) Bestellung abschließen

    5) Bestellvorgang abbrechen

""")
        
        let usereingabe = readLine()!
        let auswahl = Int(usereingabe)
        
        
        
        
        switch auswahl {
            
            
        case 1: // Kundenkonto anzeigen

            
        print("""

    Kundenkonto - Übersicht
    -----------------------

    KundenNr        \(aktiverKunde!.kundenNr)
    Kunde           \(aktiverKunde!.name)
    Guthaben        \(aktiverKunde!.kontostand) EUR
    Bonuspunkte     \(aktiverKunde!.bonuspunkte)

    Dein Bonuskonto entspricht aktuell
    einem Wert von: \(aktiverKunde!.bonuspunkte / 100) EUR

""")
            beliebigetaste()
            menueAnzeigen()
        
            
        case 2: // Produktauswahl
    
            let maxIndex = produkteListe.count
            
            repeat {
                
                produkteAnzeigen()
                
                print()
                print("Lege Artikel in deinen Warenkorb.")
                print("Wähle zwischen \(produkteListe.startIndex + 1) und \(produkteListe.endIndex) in der Liste. <ENTER> um ins Hauptmenü zu gelangen. ")
                sleep(1)
                
                if let kundenauswahl = Int(readLine()!) {
                    
                    if kundenauswahl <= maxIndex {
                    
                    let kundenauswahlProdukt = produkteListe[kundenauswahl - 1]
                    
                    print(kundenauswahlProdukt.lagerbestand)
                    
                    if kundenauswahlProdukt.lagerbestand >= 1 {
                        
                        print("Super, du hast dich für ein \(kundenauswahlProdukt.name.split(separator: " ")[0]) entschieden.")
                        kundenauswahlProdukt.anzeigen()
                        
                        print("Möchtest du mehr als ein Gerät kaufen? (j/n): ", terminator: " ")
                        
                        let auswahl = readLine()!
                        
                        switch auswahl {
                            
                        case "j":
                            
                            print("Super, wieviele möchtest du kaufen: ", terminator: " ")
                            let mengeAuswahl = Int(readLine()!)
                            
                            print("Dein Produkt wurde \(mengeAuswahl ?? 1) Stk. dem Warenkorb hinzugefügt!")
                            
                            aktiverKunde?.warenkorb.hinzufuegen(artikelNr: kundenauswahlProdukt.artikelNr, mengeNeu: mengeAuswahl!)
                            
                            
                            sleep(2)
                            
                            
                        case "n":
                            
                            print("Ok, dein Produkt wurde dem Warenkorb hinzugefügt!")
                            aktiverKunde?.warenkorb.hinzufuegen(artikelNr: kundenauswahlProdukt.artikelNr, mengeNeu: 1)
                            beliebigetaste()
                            
                            
                        default:
                            break
                        }
                        
                        
                        
                    } else {
                        print("Leider ist dieses Modell nicht mehr an Lager. Aktueller Lagerbestand: \(kundenauswahlProdukt.lagerbestand) Stück")
                        print("Die Artikelübersicht wird dir gleich wieder angezeigt! \n")
                        sleep(3)
                    }
                    
                    
                    
                } else {
                    print("Leider war deine Eingabe fehlerhaft. Wähle erneut aus!")
                    print("Die Artikelübersicht wird dir gleich wieder angezeigt! \n")
                    sleep(3)
                    
                }
                
                } else {
                    print("Ok, wir leiten dich jetzt zurück ins Hauptmenü!")
                    sleep(3)
                    menueAnzeigen()
                }
                
                
            } while true
            
          
        
        case 3:
            
            aktiverKunde?.warenkorb.anzeigen()
            print()
            beliebigetaste()
            menueAnzeigen()
            
        case 4:
            break
            // Bestellung abschließen
        case 5:
            break
            // Bestellung abbrechen
        case 6:
            
            // Testcase
            
            menueAnzeigen()
            
        default:
            break
            // Produkte anzeigen
        }
        
        
    }
    
    
}

