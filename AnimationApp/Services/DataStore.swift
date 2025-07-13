//
//  DataStore.swift
//  AnimationApp
//
//  Created by Alexandr Artemov (Mac Mini) on 13.07.2025.
//
import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curve = AnimationCurve.allCases
    
    private init() {}
}
