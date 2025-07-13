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
        // Do any additional setup after loading the view.
        
        animationView.layer.cornerRadius = 10
        startAnimationButton.layer.cornerRadius = 10
        animationDescriptionLabel.text = animation.description
    }


}

