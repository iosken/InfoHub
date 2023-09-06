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

protocol InfoHubListDetailsDataStore {
    var infoHubSubjects: InfoHubSubject? { get }
    
    var cellID: Int { get set }
}

final class InfoHubListDetailsInteractor: InfoHubListDetailsDataStore {
    // MARK: - Public class
    var infoHubListDetailsPresenter: infoHubListDetailsPresentationLogic?
    var cellID: Int = 0
    var infoHubSubjects: InfoHubSubject?
}

// MARK: - InfoHubListDetails Business Logic
extension InfoHubListDetailsInteractor: InfoHubListDetailsBusinessLogic {
    func fetchData() {
        infoHubSubjects = DataStore.shared.getTenNews()[cellID]
        guard let infoHubSubjects = infoHubSubjects else { return }
        
        let response = InfoHubListDetails.ShowInfoHubListDetails.Response(
            title: infoHubSubjects.title,
            subTitle: infoHubSubjects.subTitle
        )
        
        infoHubListDetailsPresenter?.present(response: response)
    }
}
