//
//  InfoHubPresenter.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import Foundation

protocol InfoHubPresentatioinLogic {
    func present(data: [DataStoreOutputFormat])
}

final class InfoHubPresenter {
    var viewController: InfoHubDisplayLogic?
}

extension InfoHubPresenter: InfoHubPresentatioinLogic {
    func present(data: [DataStoreOutputFormat]) {
        viewController?.showInfo(
            infoNewsCount: data.count.formatted(),
            lastInfoTitle: data.last?.title ?? ""
        )
    }
}
