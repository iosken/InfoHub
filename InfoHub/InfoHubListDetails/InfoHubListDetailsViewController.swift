//
//  InfoHubListDetailsViewController.swift
//  InfoHub
//
//  Created by Yuri Volegov on 31.08.2023.
//

import UIKit

protocol InfoHubListDetailsDisplayLogic: AnyObject {
    func displayContent(viewModel: InfoHubListDetails.ShowInfoHubListDetails.ViewModel)
}

final class InfoHubListDetailsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var titleLabelOutlet: UILabel!
    @IBOutlet var textLabelOutlet: UILabel!
    
    // MARK: - Public vars
    var infoHubListDetailsInteractor: InfoHubListDetailsBusinessLogic?
    var infoHubListDetailsRouter: (InfoHubListDetailsRoutingLogic & InfoHubListDetailsDataPassingProtocol)?
    
    // MARK: - Scene lifecycle
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        InfoHubListDetailsConfigurator.shared.configure(with: self)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        InfoHubListDetailsConfigurator.shared.configure(with: self)
    }
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        infoHubListDetailsInteractor?.fetchData()
    }
    
}

// MARK: - InfoHubListDetails Display Logic
extension InfoHubListDetailsViewController: InfoHubListDetailsDisplayLogic {
    func displayContent(viewModel: InfoHubListDetails.ShowInfoHubListDetails.ViewModel) {
        titleLabelOutlet.text = viewModel.title
        textLabelOutlet.text = viewModel.text
    }
}
