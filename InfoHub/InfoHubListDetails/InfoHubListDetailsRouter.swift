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
    var storeCellIndex: InfoHubListDetailsDataStore? { get set }
}

final class InfoHubListDetailsRouter: InfoHubListDetailsDataPassingProtocol {
    var storeCellIndex: InfoHubListDetailsDataStore?
}

extension InfoHubListDetailsRouter: InfoHubListDetailsRoutingLogic {
    
}
