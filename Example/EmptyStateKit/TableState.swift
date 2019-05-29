//
//  CustomState.swift
//  StateView
//
//  Created by Alberto Aznar de los Ríos on 24/05/2019.
//  Copyright © 2019 Alberto Aznar de los Ríos. All rights reserved.
//

import UIKit
import EmptyStateKit

enum TableState: CustomState {
    
    case noNotifications
    case noBox
    case noCart
    case noFavorites
    case noLocation
    case noProfile
    case noSearch
    case noTags
    case noInternet
    case noIncome
    case inviteFriend
    
    var image: UIImage? {
        switch self {
        case .noNotifications: return UIImage(named: "Messages")
        case .noBox: return UIImage(named: "Box")
        case .noCart: return UIImage(named: "Cart")
        case .noFavorites: return UIImage(named: "Favorites")
        case .noLocation: return UIImage(named: "Location")
        case .noProfile: return UIImage(named: "Profile")
        case .noSearch: return UIImage(named: "Search")
        case .noTags: return UIImage(named: "Tags")
        case .noInternet: return UIImage(named: "Internet")
        case .noIncome: return UIImage(named: "Income")
        case .inviteFriend: return UIImage(named: "Invite")
        }
    }
    
    var title: String? {
        switch self {
        case .noNotifications: return "No message notifications"
        case .noBox: return "The box is empty"
        case .noCart: return "The cart is empty"
        case .noFavorites: return "No favorites"
        case .noLocation:  return "Where are you?"
        case .noProfile: return "Not logged In"
        case .noSearch: return "No results"
        case .noTags: return "No collections"
        case .noInternet: return "We’re Sorry"
        case .noIncome: return "No income"
        case .inviteFriend: return "Ask friend!"
        }
    }
    
    var description: String? {
        switch self {
        case .noNotifications: return "Sorry, you don't have any message. Please come back later!"
        case .noBox: return "You dont have any email!"
        case .noCart: return "Please, select almost one item to purchase"
        case .noFavorites: return "Select your favorite items first!"
        case .noLocation: return "We can't find your location"
        case .noProfile: return "Please register or log in first"
        case .noSearch: return "Please try another search item"
        case .noTags: return "Go to collect favorites products"
        case .noInternet: return "Our staff is still working on the issue for better experience"
        case .noIncome: return "You have no payment so contact your client"
        case .inviteFriend: return "You could borrow money from your network"
        }
    }
    
    var titleButton: String? {
        switch self {
        case .noNotifications: return "Search again?"
        case .noBox: return "Search again?"
        case .noCart: return "Go back"
        case .noFavorites: return "Go back"
        case .noLocation: return "Locate now!"
        case .noProfile: return "Log in now!"
        case .noSearch: return "Go back"
        case .noTags: return "Go shopping"
        case .noInternet: return "Try again?"
        case .noIncome: return "Request payment"
        case .inviteFriend: return "View contact"
        }
    }
}
