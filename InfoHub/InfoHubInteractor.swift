//
//  InfoHubInteractor.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import Foundation

protocol InfoHubBusinessLogic {
    func getInfo()
}

final class InfoHubInteractor {
    var infoHubPresenter: InfoHubPresentatioinLogic?
}

extension InfoHubInteractor: InfoHubBusinessLogic {
    func getInfo() {
        infoHubPresenter?.present(data: DataStore.shared.getTenInfoForHub())
    }
    
    
}

