import Foundation

func start() {
    
    repeat
    
    {
        print("""
             
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
            
            ██     ██ ██ ██      ██      ██   ██  ██████  ███    ███ ███    ███ ███████ ███    ██
            ██     ██ ██ ██      ██      ██  ██  ██    ██ ████  ████ ████  ████ ██      ████   ██
            ██  █  ██ ██ ██      ██      █████   ██    ██ ██ ████ ██ ██ ████ ██ █████   ██ ██  ██
            ██ ███ ██ ██ ██      ██      ██  ██  ██    ██ ██  ██  ██ ██  ██  ██ ██      ██  ██ ██
             ███ ███  ██ ███████ ███████ ██   ██  ██████  ██      ██ ██      ██ ███████ ██   ████
        
            ██████████████ Herzlich Willkommen in unserem neuen Apple OnlineStore. ██████████████
        
        
                Was möchtest du tun?
            
                (L)ogin
                (R)egistrieren
                (B)eenden
                                                                                          
        """)
        
        guard let auswahl = readLine(), !auswahl.isEmpty else {
            print("\t❌ Du musst eine gültige Auswahl treffen!")
            sleep(2)
            start()
            return
        }
        
        
        switch auswahl.lowercased() {
            
        case "l":
            
            Thread.exit()
            

        case "r":
            
            repeat {
                
                print("""
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
                    
                ██     ██ ██ ██      ██      ██   ██  ██████  ███    ███ ███    ███ ███████ ███    ██
                ██     ██ ██ ██      ██      ██  ██  ██    ██ ████  ████ ████  ████ ██      ████   ██
                ██  █  ██ ██ ██      ██      █████   ██    ██ ██ ████ ██ ██ ████ ██ █████   ██ ██  ██
                ██ ███ ██ ██ ██      ██      ██  ██  ██    ██ ██  ██  ██ ██  ██  ██ ██      ██  ██ ██
                 ███ ███  ██ ███████ ███████ ██   ██  ██████  ██      ██ ██      ██ ███████ ██   ████
            
                ██████████████ Herzlich Willkommen in unserem neuen Apple OnlineStore. ██████████████
                                                                                                  
            """)
                
                func aktivenKundenAnlegen() -> Kunde? {
                    
                    print("\tGib deinen Vor- und Nachnamen für das neue Konto ein:", terminator: " ")
                    guard let name = readLine(), !name.isEmpty else {
                        print("\t❌ Du musst einen gültigen Namen eingeben!")
                        sleep(2)
                        return nil
                    }
                    print("\tVergib ein Passwort:", terminator: " ")
                    guard let passwort = readLine(), !passwort.isEmpty else {
                        print("\t❌ Du musst ein gültiges Passwort eingeben!")
                        sleep(2)
                        return nil
                    }
                    
                    let neuerKunde = Kunde(kundenNr: "K" + "\(Int.random(in: 100...999))",
                                           name: name,
                                           passwort: passwort,
                                           kontostand: Double.random(in: 1800...3600),
                                           bonuspunkte: Int.random(in: 60000...150000),
                                           warenkorb: Warenkorb())
                    
                    return neuerKunde
                }
                
                if let gueltigerKunde = aktivenKundenAnlegen() {
                    
                    shop_1.startShopping(aktiverKunde: gueltigerKunde)
                }
                
            } while true
            
        case "b":
            print("\n    >>> Vielen Dank für deinen Besuch. Bis Bald 🙋‍♂️")
            sleep(2)
            Thread.exit()
            
        default:
            print("\n    >>> Vielen Dank für deinen Besuch. Bis Bald 🙋‍♂️")
        }
    } while true
}



start()
