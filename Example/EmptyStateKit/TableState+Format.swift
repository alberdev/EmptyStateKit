//
//  State+Format.swift
//  StateView
//
//  Created by Alberto Aznar de los Ríos on 27/05/2019.
//  Copyright © 2019 Alberto Aznar de los Ríos. All rights reserved.
//

import UIKit
import EmptyStateKit

extension TableState {
    
    var format: EmptyStateFormat {
        switch self {
            
        case .noNotifications:
            
            return EmptyStateFormat()
            
        case .noSearch:
            
            var format = EmptyStateFormat()
            format.buttonColor = "44CCD6".hexColor
            format.position = EmptyStatePosition(view: .center, text: .center, image: .top)
            format.animation = EmptyStateAnimation.fade(0.3, 0.3)
            format.verticalMargin = -10
            format.horizontalMargin = 40
            format.imageSize = CGSize(width: 320, height: 200)
            format.buttonShadowRadius = 10
            return format
            
        case .noBox:
            
            var format = EmptyStateFormat()
            format.buttonColor = "FF386C".hexColor
            format.position = EmptyStatePosition(view: .center, text: .center, image: .bottom)
            format.animation = EmptyStateAnimation.fade(0.3, 0.3)
            format.verticalMargin = -10
            format.horizontalMargin = 40
            format.imageSize = CGSize(width: 320, height: 200)
            format.buttonShadowRadius = 10
            format.titleAttributes = [.font: UIFont(name: "AvenirNext-DemiBold", size: 26)!, .foregroundColor: UIColor.white]
            format.descriptionAttributes = [.font: UIFont(name: "Avenir Next", size: 14)!, .foregroundColor: UIColor.white]
            format.backgroundColor = .black
            return format
            
        case .noTags:
            
            var format = EmptyStateFormat()
            format.buttonColor = "44CCD6".hexColor
            format.position = EmptyStatePosition(view: .top, text: .left, image: .top)
            format.verticalMargin = 20
            format.horizontalMargin = 40
            format.imageSize = CGSize(width: 320, height: 200)
            format.buttonShadowRadius = 0
            return format
            
        case .noCart:
            
            var format = EmptyStateFormat()
            
            format.buttonColor = .white
            format.buttonAttributes = [.font: UIFont(name: "AvenirNext-DemiBold", size: 14)!, .foregroundColor: "44CCD6".hexColor, .underlineStyle: NSUnderlineStyle.single.rawValue] // , .underlineStyle: NSUnderlineStyle.single
            format.buttonTopMargin = 10
            format.position = EmptyStatePosition(view: .top, text: .center, image: .top)
            format.animation = EmptyStateAnimation.fade(0.3, 0.3)
            format.verticalMargin = 20
            format.horizontalMargin = 40
            format.imageSize = CGSize(width: 320, height: 200)
            format.buttonShadowRadius = 10
            return format
            
        case .noProfile:
            
            var format = EmptyStateFormat()
            format.buttonColor = "44CCD6".hexColor
            format.position = EmptyStatePosition(view: .top, text: .right, image: .top)
            format.animation = EmptyStateAnimation.fade(0.3, 0.3)
            format.verticalMargin = 20
            format.horizontalMargin = 40
            format.imageSize = CGSize(width: 320, height: 200)
            format.buttonShadowRadius = 10
            return format
            
        case .noFavorites:
            
            var format = EmptyStateFormat()
            format.buttonColor = "FFD500".hexColor
            format.position = EmptyStatePosition(view: .bottom, text: .center, image: .top)
            format.verticalMargin = 40
            format.horizontalMargin = 40
            format.imageSize = CGSize(width: 320, height: 200)
            format.buttonShadowRadius = 10
            return format
            
        case .noLocation:
            
            var format = EmptyStateFormat()
            format.buttonColor = "44CCD6".hexColor
            format.position = EmptyStatePosition(view: .bottom, text: .left, image: .top)
            format.animation = EmptyStateAnimation.fade(0.3, 0.3)
            format.verticalMargin = 40
            format.horizontalMargin = 40
            format.imageSize = CGSize(width: 320, height: 200)
            format.buttonShadowRadius = 10
            return format
            
        case .noInternet:
            
            var format = EmptyStateFormat()
            format.buttonColor = "44CCD6".hexColor
            format.position = EmptyStatePosition(view: .bottom, text: .left, image: .top)
            format.verticalMargin = 40
            format.horizontalMargin = 40
            format.imageSize = CGSize(width: 320, height: 200)
            format.buttonShadowRadius = 10
            format.gradientColor = ("3854A5".hexColor, "2A1A6C".hexColor)
            format.titleAttributes = [.font: UIFont(name: "AvenirNext-DemiBold", size: 26)!, .foregroundColor: UIColor.white]
            format.descriptionAttributes = [.font: UIFont(name: "Avenir Next", size: 14)!, .foregroundColor: UIColor.white]
            return format
            
        case .noIncome:
            
            var format = EmptyStateFormat()
            format.buttonColor = "44CCD6".hexColor
            format.position = EmptyStatePosition(view: .center, text: .center, image: .cover(0,120))
            format.animation = EmptyStateAnimation.fade(0.3, 0.3)
            format.verticalMargin = 0
            format.horizontalMargin = 40
            format.imageSize = CGSize(width: 320, height: 200)
            format.buttonShadowRadius = 10
            format.gradientColor = ("3854A5".hexColor, "2A1A6C".hexColor)
            format.titleAttributes = [.font: UIFont(name: "AvenirNext-DemiBold", size: 26)!, .foregroundColor: UIColor.white]
            format.descriptionAttributes = [.font: UIFont(name: "Avenir Next", size: 14)!, .foregroundColor: UIColor.white]
            return format
            
        case .inviteFriend:
            
            var format = EmptyStateFormat()
            format.buttonColor = "44CCD6".hexColor
            format.position = EmptyStatePosition(view: .bottom, text: .right, image: .cover(0,100))
            format.animation = EmptyStateAnimation.fade(0.3, 0.3)
            format.verticalMargin = 40
            format.horizontalMargin = 40
            format.imageSize = CGSize(width: 320, height: 200)
            format.buttonShadowRadius = 10
            format.gradientColor = ("3854A5".hexColor, "2A1A6C".hexColor)
            format.titleAttributes = [.font: UIFont(name: "AvenirNext-DemiBold", size: 26)!, .foregroundColor: UIColor.white]
            format.descriptionAttributes = [.font: UIFont(name: "Avenir Next", size: 14)!, .foregroundColor: UIColor.white]
            return format
        }
    }
}
