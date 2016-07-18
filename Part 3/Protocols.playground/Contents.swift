//: Playground - noun: a place where people can play

import Foundation

@objc protocol Speaker {
    func Speak()
    optional func TellJoke()
}

class Vicki: Speaker {
    @objc func Speak() {
        print("Hello, I am Vicki!")
    }
    @objc func TellJoke() {
        print("Q: What did Sushi A say to Sushi B?")
    }
}

class Ray: Speaker {
    @objc func Speak() {
        print("Yo, I am Ray!")
    }
    @objc func TellJoke() {
        print("Q: Whats the object-oriented way to become wealthy?")
    }
    func WriteTutorial() {
        print("I'm on it!")
    }
}

class Animal {
}
    
class Dog : Animal, Speaker {
    @objc func Speak() {
        print("Woof!")
    }
}

var speaker:Speaker
speaker = Ray()
speaker.Speak()
// speaker.WriteTutorial() // error!
(speaker as! Ray).WriteTutorial()
speaker = Vicki()
speaker.Speak()

speaker.TellJoke?() // optional chaining
speaker = Dog()
speaker.TellJoke?()

// Delegates

protocol DateSimulatorDelegate {
    func dateSimulatorDidStart(sim:DateSimulator, a:Speaker, b:Speaker)
    func dateSimulatorDidEnd(sim:DateSimulator, a: Speaker, b:Speaker)
}

class DateSimulator {
    
    let a:Speaker
    let b:Speaker
    var delegate:DateSimulatorDelegate?
    
    init(a:Speaker, b:Speaker) {
        self.a = a
        self.b = b
    }
    
    func simulate() {
        delegate?.dateSimulatorDidStart(self, a: a, b: b) // Optional Chaining
        print("Off to dinner...")
        a.Speak()
        b.Speak()
        print("Walking back home...")
        a.TellJoke?()
        b.TellJoke?()
        delegate?.dateSimulatorDidEnd(self, a: a, b: b) // Optional Chaining
    }
}

class LoggingDateSimulator : DateSimulatorDelegate {
    func dateSimulatorDidStart(sim:DateSimulator, a:Speaker, b:Speaker) {
        print("Date started!")
    }
    func dateSimulatorDidEnd(sim:DateSimulator, a: Speaker, b: Speaker)  {
        print("Date ended!")
    }
}

let sim = DateSimulator(a:Vicki(), b:Ray())
sim.delegate = LoggingDateSimulator()
sim.simulate()




