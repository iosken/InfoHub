//
//  InfoHubListDetailsRouter.swift
//  InfoHub
//
//  Created by Yuri Volegov on 31.08.2023.
//

import Foundation

protocol InfoHubListDetailsRoutingLogic {
    // final screen now
}

protocol InfoHubListDetailsDataPassingProtocol {
    var storeCellIndex: InfoHubListDetailsStoreProtocol? { get set }
}

final class InfoHubListDetailsRouter: InfoHubListDetailsDataPassingProtocol {
    var storeCellIndex: InfoHubListDetailsStoreProtocol?
}

extension InfoHubListDetailsRouter: InfoHubListDetailsRoutingLogic {
    
}
