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

    /// Updates the UI
    func updateUI() {
        level.text = game.currentLevelDisplay
        progress.progress = game.progress
    }

    /// Handler for the button tap
    @IBAction func incrementProgress(_ sender: Any) {
        if game.tap() && !game.active {
            // Game over
        }
        updateUI()
    }

    /// Announces the end of the game.
    func endGame() {
        let alert = UIAlertController(
            title: "Game Over",
            message: "You did it! It took you \(game.tapCount) taps to beat all \(game.currentLevel) levels.",
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "OK", style: .cancel) { (_: UIAlertAction) in
            alert.dismiss(animated:  true)
        }
        alert.addAction(action)

        present(alert, animated: true)
    }
}
