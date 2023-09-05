//
//  InfoHubPresenter.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import Foundation

protocol InfoHubPresentatioinLogic {
    func present(response: InfoHub.ShowInfo.Response)
}

final class InfoHubPresenter {
    // MARK: External vars
    weak var viewController: InfoHubDisplayLogic?
}

// MARK: InfoHub Presentatioin Logic
extension InfoHubPresenter: InfoHubPresentatioinLogic {
    func present(response: InfoHub.ShowInfo.Response) {
        
        let infoNewsCount = "News count is \(response.infoNewsCount?.formatted() ?? "")"
        let lastInfoTitle = "Last news title \(response.lastInfoTitle ?? "")"
        
        let viewModel = InfoHub.ShowInfo.ViewModel(
            infoNewsCount: infoNewsCount,
            lastInfoTitle: lastInfoTitle
        )
        
        viewController?.showInfo(viewModel: viewModel)
    }
}
