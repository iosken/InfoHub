//
//  InfoHubListDetailsViewController.swift
//  InfoHub
//
//  Created by Yuri Volegov on 31.08.2023.
//

import UIKit

protocol InfoHubListDetailsDisplayLogic {
    func displayContent(title: String, text: String)
}

final class InfoHubListDetailsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var titleLabelOutlet: UILabel!
    @IBOutlet var textLabelOutlet: UILabel!
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    


}

extension InfoHubListDetailsViewController: InfoHubListDetailsDisplayLogic {
    func displayContent(title: String, text: String) {
        titleLabelOutlet.text = title
        textLabelOutlet.text = text
    }
}
