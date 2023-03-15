//
//  GreetingConfigurator.swift
//  Greeting
//
//  Created by Student on 29.04.2022.
//

import Foundation
//сборка модуля

protocol GreetingConfiguratorProtocol{
    func configure(with view: GreetingViewController)
}

class GreetingConfigurator: GreetingConfiguratorProtocol {
    func configure(with view: GreetingViewController) {
        let presentor = GreetingPresentor(view: view)
        let interactor = GreetingInteractor(presentor: presentor)
        view.presentor = presentor
        presentor.interactor = interactor
    }
}
