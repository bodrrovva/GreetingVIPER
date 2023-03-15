//
//  GreetingInteractor.swift
//  Greeting
//
//  Created by Student on 29.04.2022.
//

import Foundation
//Interactor обработывает запросы из Presenter. Здесь содержиться основная бизнес логика модуля

protocol GtreetingInteractorProtocol: class {
    func provideGreetingData()
}

protocol GreetingInteractorOutputProtocol: class {
    func receiveGreetingData(greetingData: GreetingData)
}

class GreetingInteractor: GtreetingInteractorProtocol {
    
    weak var presentor: GreetingInteractorOutputProtocol!
    
    required init(presentor: GreetingInteractorOutputProtocol) {
        self.presentor = presentor
    }
    
    func provideGreetingData() {
        let person = Person(name: "Tim", surname: "Cook")
        let subject = "\(person.name) \(person.surname)"
        let greetingData = GreetingData(greeting: "Hello", subject: subject)
        
        presentor.receiveGreetingData(greetingData: greetingData)
    }
}

