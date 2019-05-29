//
//  EmptyStateView+Positions.swift
//  StateView
//
//  Created by Alberto Aznar de los Ríos on 24/05/2019.
//  Copyright © 2019 Alberto Aznar de los Ríos. All rights reserved.
//

import UIKit

// Positions
extension EmptyStateView {
    
    func setupViewPosition(_ position: EmptyStateViewPosition) {
        switch position {
        case .top: topView()
        case .center: centerView()
        case .bottom: bottomView()
        }
    }
    
    func setupTextPosition(_ position: EmptyStateTextPosition) {
        switch position {
        case .left: leftText()
        case .center: centerText()
        case .right: rightText()
        }
    }
    
    func setupImagePosition(_ position: EmptyStateImagePosition) {
        switch position {
        case .top: topImage()
        case .bottom: bottomImage()
        case .cover(let topMargin, let bottomMargin): coverImage(topMargin, bottomMargin)
        }
    }
    
    func setupLateralPosition() {
        messageViewLeftConstraint.constant = format.horizontalMargin
        messageViewRightConstraint.constant = format.horizontalMargin
    }
    
    func topView() {
        messageViewBottomConstraint.isActive = false
        messageViewCenterYConstraint.isActive = false
        messageViewTopConstraint.isActive = true
        messageViewTopConstraint.constant = format.verticalMargin
    }
    
    func centerView() {
        messageViewTopConstraint.isActive = false
        messageViewBottomConstraint.isActive = false
        messageViewCenterYConstraint.isActive = true
        messageViewCenterYConstraint.constant = format.verticalMargin
    }
    
    func bottomView() {
        messageViewCenterYConstraint.isActive = false
        messageViewTopConstraint.isActive = false
        messageViewBottomConstraint.isActive = true
        messageViewBottomConstraint.constant = format.verticalMargin
    }
    
    func leftText() {
        primaryButtonCenterXConstraint.isActive = false
        primaryButtonRightConstraint.isActive = false
        primaryButtonLeftConstraint.isActive = true
        primaryButtonLeftConstraint.constant = 0
        
        titleLabel.textAlignment = .left
        descriptionLabel.textAlignment = .left
    }
    
    func centerText() {
        primaryButtonLeftConstraint.isActive = false
        primaryButtonRightConstraint.isActive = false
        primaryButtonCenterXConstraint.isActive = true
        primaryButtonCenterXConstraint.constant = 0
        
        titleLabel.textAlignment = .center
        descriptionLabel.textAlignment = .center
    }
    
    func rightText() {
        primaryButtonCenterXConstraint.isActive = false
        primaryButtonLeftConstraint.isActive = false
        primaryButtonRightConstraint.isActive = true
        primaryButtonRightConstraint.constant = 0
        
        titleLabel.textAlignment = .right
        descriptionLabel.textAlignment = .right
    }
    
    func topImage() {
        imageViewTopConstraint.isActive = true
        imageViewBottomConstraint.isActive = true
        primaryButtonTopConstraint.isActive = true
        primaryButtonTopConstraint.constant = format.buttonTopMargin
    }
    
    func bottomImage() {
        imageViewTopConstraint.isActive = false
        imageViewBottomConstraint.isActive = false
        primaryButtonTopConstraint.isActive = false
        titleLabelTopConstraint.constant = 0
        primaryButtonTop2Constraint.constant = format.buttonTopMargin
        imageViewTop2Constraint.constant = 20
    }
    
    func coverImage(_ topMargin: CGFloat?, _ bottomMargin: CGFloat?) {
        imageView.isHidden = true
        coverImageView.isHidden = false
        coverImageViewTopConstraint.constant = topMargin ?? 0
        coverImageViewBottomConstraint.constant = bottomMargin ?? 0
    }
}
