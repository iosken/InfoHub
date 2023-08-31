//
//  InfoHubListRouter.swift
//  InfoHub
//
//  Created by Yuri Volegov on 30.08.2023.
//

import UIKit


protocol InfoHubListRoutingLogic {
    func navigateToListDetails(infoHubCellID: Int)
}

final class InfoHubListRouter {
    var viewController: UIViewController?
}

extension InfoHubListRouter: InfoHubListRoutingLogic {
    func navigateToListDetails(infoHubCellID: Int) {
        let infoHubListStoryboard = UIStoryboard.init(name: "InfoHubListDetailsViewController", bundle: nil)
        
        guard let ifoHubListDetailsVC = infoHubListStoryboard.instantiateViewController(withIdentifier: "InfoHubListDetailsViewController") as? InfoHubListDetailsViewController else {
            print("Failed")
            return
        }
        
        ifoHubListDetailsVC.infoHubListDetailsRouter?.storeCellIndex?.cellID = infoHubCellID
        
        viewController?.navigationController?.pushViewController(ifoHubListDetailsVC, animated: true)
    }
}
