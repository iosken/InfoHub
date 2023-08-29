//
//  InfoHubListCell.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import UIKit

final class InfoHubListCell: UITableViewCell {

    @IBOutlet var titleInfoLabel: UILabel!
    @IBOutlet var textPreviewLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    
    static let identifier = "InfoHubListCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func nextCellButtonTaped() {
        
    }
    
    func setup(data: InfoHubListCellViewModel) {
        titleInfoLabel.text = "\(data.infoId). " + data.infoTitle
        textPreviewLabel.text = data.infoText
        authorLabel.text = data.infoAutor
    }
    
}
