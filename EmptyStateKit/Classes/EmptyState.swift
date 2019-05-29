//
//  EmptyState.swift
//  StateView
//
//  Created by Alberto Aznar de los Ríos on 23/05/2019.
//  Copyright © 2019 Alberto Aznar de los Ríos. All rights reserved.
//

import UIKit

public protocol EmptyStateDelegate: class {
    func emptyState(emptyState: EmptyState, didPressButton button: UIButton)
}

public protocol EmptyStateDataSource: class {
    func imageForState(_ state: CustomState, inEmptyState emptyState: EmptyState) -> UIImage?
    func titleForState(_ state: CustomState, inEmptyState emptyState: EmptyState) -> String?
    func descriptionForState(_ state: CustomState, inEmptyState emptyState: EmptyState) -> String?
    func titleButtonForState(_ state: CustomState, inEmptyState emptyState: EmptyState) -> String?
}

public class EmptyState {
    
    public weak var delegate: EmptyStateDelegate?
    public weak var dataSource: EmptyStateDataSource?
    
    private var emptyStateView: EmptyStateView!
    private var tableView: UITableView?
    private var separatorStyle: UITableViewCell.SeparatorStyle = .none
    
    /// Show or hide view
    private var hidden = true {
        didSet {
            emptyStateView?.isHidden = hidden
        }
    }
    
    /// State mode
    private var state: CustomState? {
        didSet {
            guard let state = state else { return }
            if let dataSource = dataSource {
                emptyStateView.viewModel = EmptyStateView.ViewModel(
                    image: dataSource.imageForState(state, inEmptyState: self),
                    title: dataSource.titleForState(state, inEmptyState: self),
                    description: dataSource.descriptionForState(state, inEmptyState: self),
                    titleButton: dataSource.titleButtonForState(state, inEmptyState: self))
            } else {
                emptyStateView.viewModel = EmptyStateView.ViewModel(
                    image: state.image,
                    title: state.title,
                    description: state.description,
                    titleButton: state.titleButton)
            }
        }
    }
    
    public var format = EmptyStateFormat() {
        didSet {
            emptyStateView.format = format
        }
    }
    
    init(inView view: UIView?) {
        
        // Create empty state view
        emptyStateView = EmptyStateView.view
        emptyStateView.isHidden = true
        emptyStateView.actionButton = { [weak self] (button) in
            self?.didPressActionButton(button)
        }
        
        // Add it to your view
        if let view = view as? UITableView {
            view.backgroundView = emptyStateView
            tableView = view
            separatorStyle = view.separatorStyle
        } else if let view = view as? UICollectionView {
            view.backgroundView = emptyStateView
        } else {
            emptyStateView.fixConstraintsInView(view)
        }
    }
}

extension EmptyState {
    
    public func show(_ state: CustomState? = nil) {
        self.state = state
        hidden = false
        tableView?.separatorStyle = .none
        emptyStateView.play()
    }
    
    public func hide() {
        hidden = true
        tableView?.separatorStyle = separatorStyle
    }
}

extension EmptyState {
    
    private func didPressActionButton(_ button: UIButton) {
        delegate?.emptyState(emptyState: self, didPressButton: button)
    }
}
