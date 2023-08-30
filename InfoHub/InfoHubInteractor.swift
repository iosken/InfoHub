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
    
    // MARK: External vars
    var infoHubPresenter: InfoHubPresentatioinLogic?
    
}

// MARK: InfoHub Business Logic
extension InfoHubInteractor: InfoHubBusinessLogic {
    
    func getInfo() {
        infoHubPresenter?.present(data: DataStore.shared.getTenInfoForHub())
    }
    
    
}

