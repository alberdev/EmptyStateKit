//
//  EmptyStateFormat.swift
//  StateView
//
//  Created by Alberto Aznar de los Ríos on 23/05/2019.
//  Copyright © 2019 Alberto Aznar de los Ríos. All rights reserved.
//

import UIKit

public struct EmptyStateFormat {
    
    /// Title attributes
    public var titleAttributes: [NSAttributedString.Key: Any] = [.font: UIFont(name: "AvenirNext-DemiBold", size: 26)!, .foregroundColor: UIColor.darkGray]
    
    /// Description attributes
    public var descriptionAttributes: [NSAttributedString.Key: Any] = [.font: UIFont(name: "Avenir Next", size: 14)!, .foregroundColor: UIColor.darkGray]
    
    /// Button attributes
    public var buttonAttributes: [NSAttributedString.Key: Any] = [.font: UIFont(name: "AvenirNext-DemiBold", size: 14)!, .foregroundColor: UIColor.white]
    
    /// Button color
    public var buttonColor: UIColor = .red
    
    /// Button shadow radius
    public var buttonShadowRadius: CGFloat = 0
    
    /// Button corner radius
    public var buttonRadius: CGFloat = 20.0
    
    /// Button width, nil = auto
    public var buttonWidth: CGFloat? = nil
    
    /// Button top margin
    public var buttonTopMargin: CGFloat = 20
    
    /// Set image as background
    public var coverImage: Bool = false
    
    /// Image animation type
    public var animation: EmptyStateAnimation? = .scale(0.3, 0.3)
    
    /// Alpha container
    public var alpha: CGFloat = 1.0

    /// Tint color for template image
    public var imageTintColor: UIColor? = nil
    
    /// Background color
    public var backgroundColor: UIColor = .white
    
    /// Background Gradient color
    public var gradientColor: (UIColor, UIColor)? = nil
    
    /// Position
    public var position = EmptyStatePosition()
    
    /// Margin for vertical position
    public var verticalMargin: CGFloat = 40
    
    /// Left & right margin
    public var horizontalMargin: CGFloat = 40
    
    /// Image size
    public var imageSize: CGSize = CGSize(width: 200, height: 200)
    
    public init() {}
}
