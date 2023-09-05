//
//  InfoHubViewController.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import UIKit

protocol InfoHubDisplayLogic: AnyObject {
    func showInfo(viewModel: InfoHub.ShowInfo.ViewModel)
}

final class InfoHubViewController: UIViewController {
    @IBOutlet var infoNewsCountOutlet: UILabel!
    @IBOutlet var lastInfoTitleOutlet: UILabel!
    
    var infoHubInteractor: InfoHubBusinessLogic?
    var infoHubRouter: InfoHubRouter?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nil)
        InfoHubConfigurator.shared.configure(with: self)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        InfoHubConfigurator.shared.configure(with: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoHubInteractor?.provideShowInfo()
    }
    
    @IBAction func showInfoHubListTaped() {
        infoHubRouter?.navigateToInfoHubList()
    }
}

extension InfoHubViewController: InfoHubDisplayLogic {
    func showInfo(viewModel: InfoHub.ShowInfo.ViewModel) {
        infoNewsCountOutlet.text = viewModel.infoNewsCount
        lastInfoTitleOutlet.text = viewModel.lastInfoTitle
    }
}
