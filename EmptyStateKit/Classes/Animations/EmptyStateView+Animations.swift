//
//  EmptyStateView+Animations.swift
//  StateView
//
//  Created by Alberto Aznar de los Ríos on 24/05/2019.
//  Copyright © 2019 Alberto Aznar de los Ríos. All rights reserved.
//

import UIKit

// Animations
extension EmptyStateView {
    
    // Fade animation
    func fade(_ duration1: TimeInterval, _ duration2: TimeInterval) {
        
        imageView.alpha = 0
        titleLabel.alpha = 0
        descriptionLabel.alpha = 0
        primaryButton.alpha = 0
        
        UIView.animate(withDuration: duration1, animations: { [weak self] in
            self?.titleLabel.alpha = 1
            self?.descriptionLabel.alpha = 1
            self?.primaryButton.alpha = 1
        }) { [weak self](completed) in
            UIView.animate(withDuration: duration2, animations: { [weak self] in
                self?.imageView.alpha = 1
            }, completion: nil)
        }
    }
    
    // Scale animation
    func scale(_ duration1: TimeInterval, _ duration2: TimeInterval) {
        
        imageView.transform = CGAffineTransform(scaleX: 0, y: 0)
        titleLabel.alpha = 0
        descriptionLabel.alpha = 0
        primaryButton.alpha = 0
        
        UIView.animate(withDuration: duration1, animations: { [weak self] in
            self?.titleLabel.alpha = 1
            self?.descriptionLabel.alpha = 1
            self?.primaryButton.alpha = 1
        }) { [weak self](completed) in
            UIView.animate(withDuration: duration2, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.8, options: .curveEaseInOut, animations: { [weak self] in
                self?.imageView.transform = .identity
            }, completion: nil)
        }
    }
}
