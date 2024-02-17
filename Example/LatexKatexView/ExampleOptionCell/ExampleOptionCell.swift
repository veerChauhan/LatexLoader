//
//  ExampleOptionCell.swift
//  LatexKatexView_Example

//  Created by Ravi Ranjan on 04/02/24.
//

import UIKit

class ExampleOptionCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mainArea: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.configureUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    private func configureUI() {
        self.mainArea.layer.borderWidth = 1
        self.mainArea.layer.borderColor = UIColor.gray.cgColor
        self.mainArea.layer.cornerRadius = 5

    }
    
    func configureData(title: String) {
        self.titleLabel.text = title
    }
    
    
    
}
