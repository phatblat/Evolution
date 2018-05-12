//
//  ViewController.swift
//  Evolution
//
//  Created by Ben Chatelain on 5/12/18.
//  Copyright © 2018 Jack Chatelain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var progress: UIProgressView!
    @IBOutlet var level: UILabel!
    @IBOutlet var button: UIButton!

    private let game = GameController()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI() {
        level.text = game.currentLevelDisplay
        progress.progress = game.progress
    }

    @IBAction func incrementProgress(_ sender: Any) {
        if game.tap() && !game.active {
            // Game over
        }
        updateUI()
    }
}
