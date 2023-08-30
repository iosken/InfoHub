//
//  InfoHubListConfigurator.swift
//  InfoHub
//
//  Created by Yuri Volegov on 30.08.2023.
//

import Foundation

class InfoHubListConfigurator {
    static let shared = InfoHubListConfigurator()
    
    private init() {}
}

extension InfoHubListConfigurator {
    func configure(with viewController: InfoHubListViewController) {
        let interactor = InfoHubListInteractor()
        let presenter = InfoHubListPresenter()
        let router = InfoHubListRouter()
        viewController.infoHubListInteractor = interactor
        viewController.infoHubListRouter = router
        interactor.infoHubListPresenter = presenter
        presenter.viewController = viewController
    }
}

