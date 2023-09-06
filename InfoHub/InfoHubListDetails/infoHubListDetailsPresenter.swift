//
//  infoHubListDetailsPresenter.swift
//  InfoHub
//
//  Created by Yuri Volegov on 31.08.2023.
//

import UIKit

protocol infoHubListDetailsPresentationLogic {
    func present(response: InfoHubSubject)
}

final class infoHubListDetailsPresenter {
    // MARK: Public vars
    weak var viewController: InfoHubListDetailsDisplayLogic?
}

// MARK: - infoHubListDetails Presentation Logic
extension infoHubListDetailsPresenter: infoHubListDetailsPresentationLogic {
    func present(response: InfoHubSubject) {
        let viewModel = InfoHubListDetails.ShowInfoHubListDetails.ViewModel(
            title: response.title,
            text: response.subTitle
        )
        
        viewController?.displayContent(viewModel: viewModel)
    }
}



