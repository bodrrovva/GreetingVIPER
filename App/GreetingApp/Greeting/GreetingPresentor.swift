//
//  GreetingPresenter.swift
//  Greeting
//
//  Created by Student on 29.04.2022.
//

import Foundation
//Presenter обеспечивает общение View с другими файлами и определяеют куда направить запрос(Router, Interactor). Подготавливает и передает данные обратно во View.

struct GreetingData {
    let greeting: String
    let subject: String
}

protocol GreetingPresentorProtocol: class {
    func didTabShowGreetingButton()
}

class GreetingPresentor: GreetingPresentorProtocol {
    weak var view: GreetingViewProtocol!
    var interactor: GtreetingInteractorProtocol!

    required init(view: GreetingViewProtocol) {
        self.view = view
    }
    
    func didTabShowGreetingButton() {
        interactor.provideGreetingData()
    }
}

extension GreetingPresentor: GreetingInteractorOutputProtocol {
    func receiveGreetingData(greetingData: GreetingData) {
        let greeting = "\(greetingData.greeting), \(greetingData.subject)!"
        
        view.setGreeting(greeting: greeting)
    }
}
