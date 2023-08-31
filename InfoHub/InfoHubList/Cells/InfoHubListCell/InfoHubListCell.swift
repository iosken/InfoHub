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
    
    @IBAction func readButtonTaped() {
        guard let infoHubCellHubId = infoHubCellHubId else { return }
        
        print("infoHubCellHubId coming with \(infoHubCellHubId)")
        
        if delegate == nil { print("delegate is nil") }
        
        delegate?.infoHubListCellTaped(with: infoHubCellHubId)
    }
    
    func setup(data: InfoHubListCellViewModel) {
        infoHubCellHubId = data.infoId
        titleInfoLabel.text = "\(data.infoId) " + data.infoTitle
        textPreviewLabel.text = data.infoText
        authorLabel.text = data.infoAutor
    }
    
}
