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

// MARK: InfoHub Configuration
extension InfoHubConfigurator {
    func configure(with viewController: InfoHubViewController) {
        let presenter = InfoHubPresenter()
        let interactor = InfoHubInteractor()
        let router = InfoHubRouter()
        viewController.infoHubInteractor = interactor
        viewController.infoHubRouter = router
        router.viewController = viewController
        presenter.viewController = viewController
        interactor.infoHubPresenter = presenter
    }
}
