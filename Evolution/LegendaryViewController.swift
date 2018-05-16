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
    let totalTaps = 20
    var currentTaps = 0
    var currentProgress: Float { get {
        return Float(currentTaps) / Float(totalTaps)
    }}

    @IBOutlet var progress: UIProgressView!
    @IBOutlet var creature: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        creature.isHidden = true
        updateUI()
    }

    /// Updates the UI
    func updateUI() {
        progress.progress = currentProgress
        if currentProgress >= 1 {
            creature.isHidden = false
            creature.image = UIImage(named: "LEGEND_Evo")
        }
    }

    @IBAction func tap(_ sender: Any) {
        currentTaps += 1
        updateUI()
    }
}
