//
//  InfoHubListDetailsInteractor.swift
//  InfoHub
//
//  Created by Yuri Volegov on 31.08.2023.
//

import Foundation

protocol InfoHubListDetailsBusinessLogic {
    func fetchData()
}

protocol InfoHubListDetailsStoreProtocol {
    var cellID: Int { get set }
}

final class InfoHubListDetailsInteractor: InfoHubListDetailsStoreProtocol {
    var infoHubListDetailsPresenter: infoHubListDetailsPresentationLogic?
    
    var cellID: Int = 0
}

// MARK: - InfoHubListDetails Business Logic
extension InfoHubListDetailsInteractor: InfoHubListDetailsBusinessLogic {
    func fetchData() {
        print("Interactor get id with \(cellID)")
        let dataStoreModel = DataStore.shared.getTenInfoForHub()[cellID]
        infoHubListDetailsPresenter?.present(data: dataStoreModel)
    }
}
