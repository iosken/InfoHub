//
//  infoHubListDetailsPresenter.swift
//  InfoHub
//
//  Created by Yuri Volegov on 31.08.2023.
//

import UIKit

protocol infoHubListDetailsPresentationLogic {
    func present(data: DataStoreModel)
}

final class infoHubListDetailsPresenter {
    // MARK: Public properties
    weak var viewController: InfoHubListDetailsDisplayLogic?
}

extension infoHubListDetailsPresenter: infoHubListDetailsPresentationLogic {
    
    func present(data: DataStoreModel) {
        let title = data.title
        let text = data.subTitle
        
        viewController?.displayContent(title: title, text: text)
    }
    
}



