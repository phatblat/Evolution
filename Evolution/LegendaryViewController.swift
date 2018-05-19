//
//  LegendaryViewController.swift
//  Evolution
//
//  Created by Ben Chatelain on 5/15/18.
//  Copyright © 2018 Jack Chatelain. All rights reserved.
//

import UIKit
import Foundation

class LegendaryViewController: UIViewController {
    let totalTaps = 25000
    var currentTaps = 0
    var currentProgress: Float { get {
        return Float(currentTaps) / Float(totalTaps)
    }}

    @IBOutlet var progress: UIProgressView!
    @IBOutlet var creature: UIImageView!
    @IBOutlet var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        creature.isHidden = true
        updateUI()
    }

    /// Updates the UI
    func updateUI() {
        progress.progress = currentProgress
        if currentProgress >= 1 {
            progress.isHidden = true
            creature.isHidden = false
            creature.image = #imageLiteral(resourceName: "LEGEND_Evo")
            button.isEnabled = false
        }
    }

    @IBAction func tap(_ sender: Any) {
        currentTaps += 1
        updateUI()
    }
}
