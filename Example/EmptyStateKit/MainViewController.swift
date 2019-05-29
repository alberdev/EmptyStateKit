//
//  ViewController.swift
//  StateView
//
//  Created by Alberto Aznar de los Ríos on 23/05/2019.
//  Copyright © 2019 Alberto Aznar de los Ríos. All rights reserved.
//

import UIKit
import EmptyStateKit

class MainViewController: UIViewController {

    @IBOutlet weak var hereButton: UIButton!
    @IBOutlet weak var tableButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation()
        
        hereButton.layer.cornerRadius = 20
        tableButton.layer.cornerRadius = 20
        
        var format = EmptyStateFormat()
        format.buttonColor = "44CCD6".hexColor
        format.position = EmptyStatePosition(view: .bottom, text: .left, image: .top)
        format.verticalMargin = 40
        format.horizontalMargin = 40
        format.imageSize = CGSize(width: 320, height: 200)
        format.buttonShadowRadius = 10
        format.titleAttributes = [.font: UIFont(name: "AvenirNext-DemiBold", size: 26)!, .foregroundColor: UIColor.white]
        format.descriptionAttributes = [.font: UIFont(name: "Avenir Next", size: 14)!, .foregroundColor: UIColor.white]
        format.gradientColor = ("3854A5".hexColor, "2A1A6C".hexColor)
        
        view.emptyState.format = format
        view.emptyState.delegate = self
        view.emptyState.dataSource = self
    }
    
    @IBAction func viewDidPressHereButton(_ sender: UIButton) {
        view.emptyState.show(MainState.noInternet)
    }
    
    private func setupNavigation() {
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .darkGray
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.darkGray,
            NSAttributedString.Key.font: UIFont(name: "AvenirNext-DemiBold", size: 16)!]
    }
}

extension MainViewController: EmptyStateDelegate {
    
    func emptyState(emptyState: EmptyState, didPressButton button: UIButton) {
        view.emptyState.hide()
    }
}

extension MainViewController: EmptyStateDataSource {
    
    func imageForState(_ state: CustomState, inEmptyState emptyState: EmptyState) -> UIImage? {
        switch state as! MainState {
        case .noInternet: return UIImage(named: "Internet")
        }
    }
    
    func titleForState(_ state: CustomState, inEmptyState emptyState: EmptyState) -> String? {
        switch state as! MainState {
        case .noInternet:  return "We’re Sorry"
        }
    }
    
    func descriptionForState(_ state: CustomState, inEmptyState emptyState: EmptyState) -> String? {
        switch state as! MainState {
        case .noInternet: return "Our staff is still working on the issue for better experience"
        }
    }
    
    func titleButtonForState(_ state: CustomState, inEmptyState emptyState: EmptyState) -> String? {
        switch state as! MainState {
        case .noInternet: return "Try again?"
        }
    }
}

