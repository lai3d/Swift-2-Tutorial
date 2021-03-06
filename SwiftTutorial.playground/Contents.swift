//: Playground - noun: a place where people can play


// Basic Types and Control Flow in Swift

let swiftTeam = 13
let iOSTeam = 54
let otherTeams = 48
var totalTeam = swiftTeam + iOSTeam + otherTeams

totalTeam += 1

let priceInferred = 19.99
let priceExplicit: Double = 19.99

let onSaleInferred = true
let onSaleExplicit: Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit: String = "Whoopie Cushion"

if onSaleInferred {
    print("\(nameInferred) on sale for \(priceInferred)!")
} else {
    print("\(nameInferred) at regular price: \(priceInferred)!")
}

// Classes and Methods

// 1
class TipCalculator {
    // 2
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    // 3
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    // 4
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    // 5
    func printPossibleTips() {
        print("15%: \(calcTipWithTipPct(0.15))")
        print("18%: \(calcTipWithTipPct(0.18))")
        print("20%: \(calcTipWithTipPct(0.20))")
    }
}

// 6
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.printPossibleTips()

// Arrays and For Loops

print("\nArrays and For Loops\n")

// 1
class TipCalculator2 {
    // 2
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    // 3
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    // 4
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    // 5
    func printPossibleTips() {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let _:[Double] = [0.15, 0.18, 0.20]
        
        for possibleTip in possibleTipsInferred {
            print("\(possibleTip*100)%: \(calcTipWithTipPct(possibleTip))")
        }
    }
}

// 6
let tipCalc2 = TipCalculator2(total: 33.25, taxPct: 0.06)
tipCalc2.printPossibleTips()

// Dictionaries

print("Dictionaries")

class TipCalculator3 {
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    // 1
    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        
        // 2
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            // 3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}

let tipCalc3 = TipCalculator3(total: 33.25, taxPct: 0.06)
tipCalc3.returnPossibleTips()


