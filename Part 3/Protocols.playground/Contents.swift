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

speaker.TellJoke?()
speaker = Dog()
speaker.TellJoke?()