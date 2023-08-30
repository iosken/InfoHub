//
//  InfoHubPresenter.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import Foundation

protocol InfoHubPresentatioinLogic {
    func present(data: [DataStoreModel])
}

final class InfoHubPresenter {
    
    // MARK: External vars
    var viewController: InfoHubDisplayLogic?
}


// MARK: InfoHub Presentatioin Logic
extension InfoHubPresenter: InfoHubPresentatioinLogic {
    func present(data: [DataStoreModel]) {
        viewController?.showInfo(
            infoNewsCount: data.count.formatted(),
            lastInfoTitle: data.last?.title ?? ""
        )
    }
}
