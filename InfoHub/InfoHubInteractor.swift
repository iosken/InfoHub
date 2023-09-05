//
//  InfoHubInteractor.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import Foundation

protocol InfoHubBusinessLogic {
    func provideShowInfo()
}

protocol InfoHubDataStore {
    var infoHubSubjects: [InfoHubSubject]? { get }
}

final class InfoHubInteractor: InfoHubDataStore {
    // MARK: External vars
    var infoHubPresenter: InfoHubPresentatioinLogic?
    let infoHubSubjects: [InfoHubSubject]? = DataStore.shared.getTenNews()
}

// MARK: InfoHub Business Logic
extension InfoHubInteractor: InfoHubBusinessLogic {
    func provideShowInfo() {
        let response = InfoHub.ShowInfo.Response(
            infoNewsCount: infoHubSubjects?.count,
            lastInfoTitle: infoHubSubjects?.last?.title
        )
        infoHubPresenter?.present(response: response)
    }
}

