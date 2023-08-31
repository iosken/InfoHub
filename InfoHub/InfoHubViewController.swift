//
//  InfoHubViewController.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import UIKit

protocol InfoHubDisplayLogic {
    func showInfo(infoNewsCount: String, lastInfoTitle: String)
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
        infoHubInteractor?.getInfo()
    }
    
    @IBAction func showInfoHubListTaped() {
        infoHubRouter?.navigateToInfoHubList()
    }
}

extension InfoHubViewController: InfoHubDisplayLogic {
    func showInfo(infoNewsCount: String, lastInfoTitle: String) {
        infoNewsCountOutlet.text = infoNewsCount
        lastInfoTitleOutlet.text = lastInfoTitle
    }
}
