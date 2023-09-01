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

protocol InfoHubListDataStore {
    var infoHubSubjects: [InfoHubSubject]? { get }
}

final class InfoHubListInteractor: InfoHubListDataStore {
    // MARK: - Public vars
    var infoHubListPresenter: InfoHubListPresenter?
    
    
    // MARK: - InfoHubList Data Store
    var infoHubSubjects: [InfoHubSubject]?
}

// MARK: BusinessLogic
extension InfoHubListInteractor: InfoHubListBusinessLogic {
    func fetchData() {
        let infoHubSubjects = DataStore.shared.getTenNews()

        infoHubListPresenter?.present(dataToPresent: infoHubSubjects)
    }
}

