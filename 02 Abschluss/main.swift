import Foundation

func start() {
    var programmLaeuft = true
    repeat {
        for _ in 1...20 {
            print("    █", terminator: "")
            Thread.sleep(forTimeInterval: 0.1)
        }
        
        print("""
            
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
            ██     ██ ██ ██      ██      ██   ██  ██████  ███    ███ ███    ███ ███████ ███    ██
            ██     ██ ██ ██      ██      ██  ██  ██    ██ ████  ████ ████  ████ ██      ████   ██
            ██  █  ██ ██ ██      ██      █████   ██    ██ ██ ████ ██ ██ ████ ██ █████   ██ ██  ██
            ██ ███ ██ ██ ██      ██      ██  ██  ██    ██ ██  ██  ██ ██  ██  ██ ██      ██  ██ ██
             ███ ███  ██ ███████ ███████ ██   ██  ██████  ██      ██ ██      ██ ███████ ██   ████
        
            ██████████████ Herzlich Willkommen in unserem neuen Apple OnlineStore. ██████████████
        
                                                    .88
                                                  .888'
                                                  888'
                                                  88'
                                     .88888888888. .88888888888.
                                   .88888888888888888888888888888.
                                 .88888888888888888888888888888888.
                                .&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                                &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                `%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                 `00000000000000000000000000000000'
                                  `000000000000000000000000000000'
                                    `###########################'
                                      `#######################'
                                        `#########''########'
                                
            █████████████████████  (L)ogin  (R)egistrieren  (B)eenden  ███████████████████████████
        """)
        
        guard let auswahl = readLine(), !auswahl.isEmpty else {
            print("\t❌ Du musst eine gültige Auswahl treffen!")
            sleep(2)
            continue // bricht nicht ab
        }
        
        switch auswahl.lowercased() {
            
        case "l":
            for _ in 1...20 {
                print("    █", terminator: "")
                Thread.sleep(forTimeInterval: 0.1)
            }
            print("""
                   
            
            
            
            
            
            
            
            
            
            
            
            
            
            
                                                            .88
                                                          .888'
                                                          888'
                                                          88'
                                             .88888888888. .88888888888.
                                           .88888888888888888888888888888.
                                         .88888888888888888888888888888888.
                                        .&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                                        &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                        `%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                         `00000000000000000000000000000000'
                                          `000000000000000000000000000000'
                                            `###########################'
                                              `#######################'
                                                `#########''########'

              
                                       ██       ██████   ██████  ██ ███    ██
                                       ██      ██    ██ ██       ██ ████   ██
                                       ██      ██    ██ ██   ███ ██ ██ ██  ██
                                       ██      ██    ██ ██    ██ ██ ██  ██ ██
                                       ███████  ██████   ██████  ██ ██   ████
            
                ██████████████ Herzlich Willkommen in unserem neuen Apple OnlineStore. ██████████████
                                                                                                  
            """)
            
            print("\tWie ist deine Kundennummer:", terminator: " ")
            let eingabe_Kundennummer = readLine() ?? ""
            
            print("\tWie ist dein Passwort:", terminator: " ")
            let eingabePasswort = readLine() ?? ""
            
            func findeKunde(kundeListe: [Kunde], kundenNr: String, passwort: String) -> Kunde? {
                
                if let kunde = kundeListe.first(where: { $0.kundenNr == kundenNr }) {
                    if kunde.passwort == eingabePasswort {
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
            
            if let gefundenerKunde = findeKunde(kundeListe: kundenListe, kundenNr: eingabe_Kundennummer.capitalized, passwort: eingabePasswort) {
                shop_1.startShopping(aktiverKunde: gefundenerKunde)
            } else {
                print("\t❌ Anmeldung fehlgeschlagen!")
                sleep(2)
            }
            
        case "r":
            for _ in 1...20 {
                print("    █", terminator: "")
                Thread.sleep(forTimeInterval: 0.1)
            }
            
                print("""
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
                                                            .88
                                                          .888'
                                                          888'
                                                          88'
                                             .88888888888. .88888888888.
                                           .88888888888888888888888888888.
                                         .88888888888888888888888888888888.
                                        .&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                                        &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                        `%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                         `00000000000000000000000000000000'
                                          `000000000000000000000000000000'
                                            `###########################'
                                              `#######################'
                                                `#########''########'

            
                               ██████  ███████  ██████  ██ ███████ ████████ ██████
                               ██   ██ ██      ██       ██ ██         ██    ██   ██
                               ██████  █████   ██   ███ ██ ███████    ██    ██████
                               ██   ██ ██      ██    ██ ██      ██    ██    ██   ██
                               ██   ██ ███████  ██████  ██ ███████    ██    ██   ██ ██
                                                                    
                ██████████████ Herzlich Willkommen in unserem neuen Apple OnlineStore. ██████████████
                                                                                                  
            """)
                
                func aktivenKundenAnlegen() -> Kunde? {

                    print("\tGib deinen Vor- und Nachnamen für das neue Konto ein:", terminator: " ")
                    guard let name = readLine(), !name.isEmpty else {
                        print("\t❌ Du musst einen gültigen Namen eingeben!")
                        sleep(1)
                        return nil
                    }
                    print("\tVergib ein Passwort:", terminator: " ")
                    guard let passwort = readLine(), !passwort.isEmpty else {
                        print("\t❌ Du musst ein gültiges Passwort eingeben!")
                        sleep(1)
                        return nil
                    }
                    
                    let neuerKunde = Kunde(kundenNr: "K" + "\(Int.random(in: 100...999))", name: name, passwort: passwort)
                    
                    return neuerKunde
                }
                
                if let gueltigerKunde = aktivenKundenAnlegen() {
                    //shop_1.kundeHinzufuegen(to: &kundenListe, neuerKunde: gueltigerKunde)
                    gueltigerKunde.kundeHinzufuegen(neuerKunde: gueltigerKunde)
                    shop_1.startShopping(aktiverKunde: gueltigerKunde)
                }
            
        case "b":
            print("\n    >>> Vielen Dank für deinen Besuch. Bis Bald 🙋‍♂️")
            sleep(1)
            programmLaeuft = false
            
        default:
            print("\n    >>> Vielen Dank für deinen Besuch. Bis Bald 🙋‍♂️")
        }
        
    } while programmLaeuft
                
}

start()
