//
//  InfoHubListDetailsConfigurator.swift
//  InfoHub
//
//  Created by Yuri Volegov on 31.08.2023.
//

import Foundation

final class InfoHubListDetailsConfigurator {
    static let shared = InfoHubListDetailsConfigurator()
    
    private init() {}
}

extension InfoHubListDetailsConfigurator {
    func configure(with viewController: InfoHubListDetailsViewController) {
        let interactor = InfoHubListDetailsInteractor()
        let presenter = infoHubListDetailsPresenter()
        let router = InfoHubListDetailsRouter()
        
        viewController.infoHubListDetailsInteractor = interactor
        viewController.infoHubListDetailsRouter = router
        presenter.viewController = viewController
        interactor.infoHubListDetailsPresenter = presenter
        router.storeCellIndex = interactor
    }
}



