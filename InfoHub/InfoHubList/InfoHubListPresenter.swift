//
//  InfoHubListPresenter.swift
//  InfoHub
//
//  Created by Yuri Volegov on 30.08.2023.
//

import Foundation

protocol InfoHubListPresentationLogic {
    func present(dataToPresent: [InfoHubSubject])
}

final class InfoHubListPresenter {
    // MARK: - Public vars
    weak var viewController: InfoHubListViewController?
}

extension InfoHubListPresenter: InfoHubListPresentationLogic {
    func present(dataToPresent: [InfoHubSubject]) {
        let rows = dataToPresent.map {
            InfoHubList.ShowInfoHubList.viewModel.InfoHubListCellViewModel(infoHubSubject: $0)
        }
        
        let viewModel = InfoHubList.ShowInfoHubList.viewModel(rows: rows)
        
        viewController?.displayInfo(viewModel: viewModel)
    }
}
