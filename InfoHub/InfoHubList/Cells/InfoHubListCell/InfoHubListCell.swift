//
//  InfoHubListCell.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import UIKit

protocol InfoHubListCellDelegate {
    func infoHubListCellTaped(with id: Int)
}

final class InfoHubListCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet var titleInfoLabel: UILabel!
    @IBOutlet var textPreviewLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    
    static let identifier = "InfoHubListCell"
    
    // MARK: - Private vars
    var infoHubCellHubId: Int?
    var delegate: InfoHubListCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // MARK: - IB Actions
    @IBAction func readButtonTaped() {
        guard let infoHubCellHubId = infoHubCellHubId else { return }
        
        delegate?.infoHubListCellTaped(with: infoHubCellHubId)
    }
    
    func setup(data: InfoHubListCellViewModelProtocol) {
        guard let data = data as? InfoHubList.ShowInfoHubList.viewModel.InfoHubListCellViewModel else { return }
        infoHubCellHubId = data.infoId
        titleInfoLabel.text = "\(data.infoId) " + data.infoTitle
        textPreviewLabel.text = data.infoText
        authorLabel.text = data.infoAutor
    }
    
}
