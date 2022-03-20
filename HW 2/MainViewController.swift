//
//  MainViewController.swift
//  HW 2
//
//  Created by Aleksandr on 20.03.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewBackgroundColor(red redValueNew: Float, green greenValueNew: Float, blue blueValueNew: Float)
}


class MainViewController: UIViewController {
    
    var redValue: Float = 0.7
    var greenValue: Float = 0.8
    var blueValue: Float = 0.9

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(
            red: CGFloat(redValue),
            green: CGFloat(greenValue),
            blue: CGFloat(blueValue),
            alpha: 1
        )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.redValueMainVC = redValue
        settingsVC.greenValueMainVC = greenValue
        settingsVC.blueValueMainVC = blueValue
        settingsVC.delegate = self
    }
}


// MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setNewBackgroundColor(red redValueNew: Float, green greenValueNew: Float, blue blueValueNew: Float) {
        redValue = redValueNew
        greenValue = greenValueNew
        blueValue = blueValueNew
    }
    
    
}

