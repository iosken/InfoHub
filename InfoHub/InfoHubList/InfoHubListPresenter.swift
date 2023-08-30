//
//  InfoHubListPresenter.swift
//  InfoHub
//
//  Created by Yuri Volegov on 30.08.2023.
//

import Foundation

protocol InfoHubListPresentationLogic {
    func present(dataToPresent: [DataStoreModel])
}

final class InfoHubListPresenter {
    var viewController: InfoHubListViewController?
}


extension InfoHubListPresenter: InfoHubListPresentationLogic {
    func present(dataToPresent: [DataStoreModel]) {
        let dataToDisplay = dataToPresent.map { dataStoreModel -> InfoHubListCellViewModel in
            InfoHubListCellViewModel(
                infoId: Int(dataStoreModel.infoId) ?? 0,
                infoTitle: dataStoreModel.title,
                infoText: dataStoreModel.subTitle,
                infoAutor: dataStoreModel.author
            )
        }
        
        print("presenter push to display with \(dataToDisplay.last?.infoTitle ?? "no data")")
        
        viewController?.display(data: dataToDisplay)
    }
    
}
