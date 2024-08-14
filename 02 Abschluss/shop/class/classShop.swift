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
        }
        print()
    }
    
    func beliebigetaste() {
        print("▶︎ Weiter mit beliebiger Taste...", terminator: " ")
        let _ = readLine()
    }
    
    func menueAnzeigen() {
        
        print("""
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
            ╔════════════════════════════════════════════════════════════════════════════════════════╗
            ║  █████╗ ██████╗ ██████╗ ██╗     ███████╗    ███████╗████████╗ ██████╗ ██████╗ ███████╗ ║
            ║ ██╔══██╗██╔══██╗██╔══██╗██║     ██╔════╝    ██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝ ║
            ║ ███████║██████╔╝██████╔╝██║     █████╗      ███████╗   ██║   ██║   ██║██████╔╝█████╗   ║
            ║ ██╔══██║██╔═══╝ ██╔═══╝ ██║     ██╔══╝      ╚════██║   ██║   ██║   ██║██╔══██╗██╔══╝   ║
            ║ ██║  ██║██║     ██║     ███████╗███████╗    ███████║   ██║   ╚██████╔╝██║  ██║███████╗ ║
            ║ ╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝╚══════╝    ╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝ ║
            ╚════════════════════════════════════════════════════════════════════════════════════════╝
                    ████████████████████████  WILLKOMMEN IM STORE  ███████████████████████████

        """)

        print("""

    Angemeldet: \(aktiverKunde!.name)
    ------------------------------------

    1) 🙍‍♂️ Kundenkonto anzeigen
    2) 🛍️ Produkte auswählen
    3) 🛒 Warenkorb anzeigen
    4) 💳 Bestellung abschließen

    5) 👋 Bestellvorgang abbrechen

""")
        print("\tViel Spaß beim Shoppen.\n\tTriff eine Auswahl ▶︎ ", terminator: " ")
        let usereingabe = readLine()!
        let auswahl = Int(usereingabe)
        
        
        switch auswahl {
            
            
        case 1: // Kundenkonto anzeigen
            
            
            print("""
    





















     █████╗  ██████╗ ██████╗ ██████╗ ██╗   ██╗███╗   ██╗████████╗
    ██╔══██╗██╔════╝██╔════╝██╔═══██╗██║   ██║████╗  ██║╚══██╔══╝
    ███████║██║     ██║     ██║   ██║██║   ██║██╔██╗ ██║   ██║
    ██╔══██║██║     ██║     ██║   ██║██║   ██║██║╚██╗██║   ██║
    ██║  ██║╚██████╗╚██████╗╚██████╔╝╚██████╔╝██║ ╚████║   ██║
    ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═╝
    ═════════════════════════════════════════════════════════════

    🆔 KundenNr        \(aktiverKunde?.kundenNr ?? "#Fehler")
    🙍‍♂️ Kunde           \(aktiverKunde?.name ?? "#Fehler")
    💰 Guthaben        \(aktiverKunde?.kontostand ?? 0) EUR
    🔸 Bonuspunkte     \(aktiverKunde?.bonuspunkte ?? 0)

    Dein Bonuskonto entspricht aktuell
    einem Wert von: \(aktiverKunde?.bonuspunkte ?? 0 / 100) EUR

""")
            beliebigetaste()
            menueAnzeigen()
            
            
        case 2: // Produktauswahl
            
            let maxIndex = produkteListe.count
            var mengeAuswahl: Int = 0
            var betragBonuspunkte: Double = 0.0
            
            repeat {
                
                produkteAnzeigen()
                
                print()
                print("🔍 Wähle zwischen \(produkteListe.startIndex + 1) und \(produkteListe.endIndex) aus dem Sortiment.")
                print("❓ Triff eine Auswahl oder mit <ENTER> zum Menü: ", terminator: "")
                
                if let kundenauswahl = Int(readLine()!) {
                    
                    if kundenauswahl <= maxIndex {
                        
                        let kundenauswahlProdukt = produkteListe[kundenauswahl - 1]
                        
                        betragBonuspunkte = kundenauswahlProdukt.preis
                        
                        if kundenauswahlProdukt.lagerbestand >= 1 {
                            
                            print("🙂 Super, du hast dich für ein \(kundenauswahlProdukt.name.split(separator: " ")[1]) entschieden.")
                            kundenauswahlProdukt.anzeigen()
                            
                            print("🤷‍♂️ Möchtest du mehr als ein Gerät kaufen? (j/n): ", terminator: " ")
                            let auswahl = readLine()!
                            
                            switch auswahl {
                                
                            case "j":
                                
                                print("❓ Wieviele möchtest du kaufen: ", terminator: " ")
                                
                                mengeAuswahl = Int(readLine()!)!
                                
                                if mengeAuswahl > 0 {
                                    
                                    if mengeAuswahl < kundenauswahlProdukt.lagerbestand {
                                        
                                        print("🛍️ \(mengeAuswahl) Stk. wurden dem Warenkorb hinzugefügt!")
                                        kundenauswahlProdukt.reduziereLagerbestand(bestand: mengeAuswahl)
                                        aktiverKunde?.warenkorb.hinzufuegen(artikelNr: kundenauswahlProdukt.artikelNr, mengeNeu: mengeAuswahl)
                                        aktiverKunde?.bonuspunkteAktualisieren(betrag: betragBonuspunkte * Double(mengeAuswahl))
                                        beliebigetaste()
                                        
                                    } else {
                                        
                                        print("⭕️ Leider ist unser Lagerbestnd zu gering.")
                                        print("🛍️ Es wurden dir nur \(kundenauswahlProdukt.lagerbestand) Stk in den Warenkorb gelegt!")
                                        
                                        aktiverKunde?.warenkorb.hinzufuegen(artikelNr: kundenauswahlProdukt.artikelNr, mengeNeu: kundenauswahlProdukt.lagerbestand)
                                        kundenauswahlProdukt.reduziereLagerbestand(bestand: kundenauswahlProdukt.lagerbestand)
                                        aktiverKunde?.bonuspunkteAktualisieren(betrag: betragBonuspunkte)
                                        beliebigetaste()
                                    }
                                    
                                } else {
                                    print("Fehlerhafte Eingabe! ")
                                    print("⌛️ Die Artikelübersicht wird dir wieder angezeigt! \n")
                                    sleep(3)
                                    break
                                }
                                
                            case "n":
                                print()
                                print("👍 Dein Produkt wurde 1x dem Warenkorb hinzugefügt!")
                                aktiverKunde?.warenkorb.hinzufuegen(artikelNr: kundenauswahlProdukt.artikelNr, mengeNeu: 1)
                                kundenauswahlProdukt.reduziereLagerbestand(bestand: 1)

                                aktiverKunde?.bonuspunkteAktualisieren(betrag: betragBonuspunkte)
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
                    sleep(2)
                    menueAnzeigen()
                }
                
                
            } while true
            
            
            
        case 3:
            shopStatus = ShopStatus.bestellbestaetigung
            
            aktiverKunde?.warenkorb.anzeigen()
            print()
            beliebigetaste()
            menueAnzeigen()
            
        case 4:
            shopStatus = ShopStatus.bestellabschluss
            break
            // Bestellung abschließen
        case 5:
            break
            // Bestellung abbrechen
        
            
        default:
            break
            // Produkte anzeigen
        }
        
    }
    
    
}

