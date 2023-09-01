//
//  InfoHubPresenter.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import Foundation

protocol InfoHubPresentatioinLogic {
    func present(data: [InfoHubSubject])
}

final class InfoHubPresenter {
    // MARK: External vars
    var viewController: InfoHubDisplayLogic?
}

// MARK: InfoHub Presentatioin Logic
extension InfoHubPresenter: InfoHubPresentatioinLogic {
    func present(data: [InfoHubSubject]) {
        viewController?.showInfo(
            infoNewsCount: "News count is \(data.count.formatted())",
            lastInfoTitle: "Last news title \(data.last?.title ?? "")"
        )
    }
}
