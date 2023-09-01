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

protocol InfoHubDataStore {
    var infoHubSubjects: [InfoHubSubject]? { get }
}

final class InfoHubInteractor: InfoHubDataStore {
    // MARK: External vars
    var infoHubPresenter: InfoHubPresentatioinLogic?
    let infoHubSubjects: [InfoHubSubject]? = DataStore.shared.getTenInfoForHub()
}

// MARK: InfoHub Business Logic
extension InfoHubInteractor: InfoHubBusinessLogic {
    func getInfo() {
        infoHubPresenter?.present(data: infoHubSubjects ?? [])
    }
}

