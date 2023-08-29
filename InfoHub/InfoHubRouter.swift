//
//  InfoHubRouter.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import UIKit

protocol InfoHubRoutingLogic {
    func navigateToInfoHubList()
}


class InfoHubRouter {
    weak var viewController: UIViewController?
}


extension InfoHubRouter: InfoHubRoutingLogic {
    func navigateToInfoHubList() {
        let storyboard = UIStoryboard.init(name: "InfoHubListViewController", bundle: nil)
        
        guard let infoHubListVC = storyboard.instantiateViewController(
            identifier: "InfoHubListViewController"
        ) as? InfoHubListViewController else { return }

        viewController?.navigationController?.pushViewController(infoHubListVC, animated: true)
    }
    
    
}
