//
//  InfoHubListInteractor.swift
//  InfoHub
//
//  Created by Yuri Volegov on 30.08.2023.
//

import Foundation

protocol InfoHubListBusinessLogic {
    func fetchData()
}

final class InfoHubListInteractor {
    
    // MARK: - Public vars
    var infoHubListPresenter: InfoHubListPresenter?
    
}

// MARK: BusinessLogic
extension InfoHubListInteractor: InfoHubListBusinessLogic {
    func fetchData() {
        let dataToPresent = DataStore.shared.getTenInfoForHub()

        infoHubListPresenter?.present(dataToPresent: dataToPresent)
    }
}

