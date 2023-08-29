//
//  InfoHubConfigurator.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import Foundation

final class InfoHubConfigurator {
    static let shared = InfoHubConfigurator()
    
    private init() {}
}

extension InfoHubConfigurator {
    func configure(with viewController: InfoHubViewController) {
        let presenter = InfoHubPresenter()
        let interactor = InfoHubInteractor()
        viewController.infoHubInteractor = interactor
        presenter.viewController = viewController
        interactor.infoHubPresenter = presenter
    }
}
