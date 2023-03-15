//
//  ViewController.swift
//  Greeting
//
//  Created by Student on 29.04.2022.
//

import UIKit
//View Controller отвечает за отображение модуля

protocol GreetingViewProtocol: class {
    func setGreeting(greeting: String)
}

class GreetingViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    var presentor: GreetingPresentorProtocol!
    private let configurator: GreetingConfiguratorProtocol = GreetingConfigurator()

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
    }
    
    @IBAction func showGreetingPressed() {
        presentor.didTabShowGreetingButton()
    }
}

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(greeting: String) {
        greetingLabel.text = greeting
    }
}

