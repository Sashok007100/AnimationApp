//
//  Animation.swift
//  AnimationApp
//
//  Created by Alexandr Artemov (Mac Mini) on 13.07.2025.
//
struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    private static let dataSource = DataStore.shared
    
    static var randomAnimation: Animation {
        Animation(
            preset: dataSource.animations.randomElement()?.rawValue ?? "pop",
            curve: dataSource.curve.randomElement()?.rawValue ?? "spring",
            force: Double.random(in: 1.0...5.0),
            duration: Double.random(in: 0.5...4.0),
            delay: Double.random(in: 0.5...3.0)
        )
    }
}
