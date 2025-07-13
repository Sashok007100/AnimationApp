//
//  ViewController.swift
//  AnimationApp
//
//  Created by Alexandr Artemov (Mac Mini) on 13.07.2025.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var startAnimationButton: UIButton!
    @IBOutlet var animationDescriptionLabel: UILabel!
    
    private var animation = Animation.randomAnimation
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 10
        startAnimationButton.layer.cornerRadius = 10
        animationDescriptionLabel.text = animation.description
    }

    @IBAction func startAnimationTapped() {
        animationDescriptionLabel.text = animation.description
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        animation = .randomAnimation
        startAnimationButton.setTitle("Run \(animation.preset)", for: .normal)
    }
}
