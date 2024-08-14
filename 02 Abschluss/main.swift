import Foundation

repeat {
    
    print("""

        
    ██     ██ ██ ██      ██      ██   ██  ██████  ███    ███ ███    ███ ███████ ███    ██
    ██     ██ ██ ██      ██      ██  ██  ██    ██ ████  ████ ████  ████ ██      ████   ██
    ██  █  ██ ██ ██      ██      █████   ██    ██ ██ ████ ██ ██ ████ ██ █████   ██ ██  ██
    ██ ███ ██ ██ ██      ██      ██  ██  ██    ██ ██  ██  ██ ██  ██  ██ ██      ██  ██ ██
     ███ ███  ██ ███████ ███████ ██   ██  ██████  ██      ██ ██      ██ ███████ ██   ████

    ████████████ Herzlich Willkommen in unserem neuen Apple OnlineStore. ████████████████
                                                                                      
""")
    
    func aktivenKundenAnlegen() -> Kunde? {
        
        print("\tBitte gib deinen Vor- und Nachnamen ein:", terminator: " ")
        guard let name = readLine(), !name.isEmpty else {
            print("\t❌ Sie müssen einen gültigen Namen eingeben!")
            return nil
        }
        print("\tBitte gib dein Passwort ein:", terminator: " ")
        guard let passwort = readLine(), !passwort.isEmpty else {
            print("\t❌ Sie müssen ein gültiges Passwort eingeben!")
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


