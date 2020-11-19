//
//  MainTableViewCell.swift
//  HongDae
//
//  Created by Stat.So on 2020/11/19.
//

import UIKit

class MainTableViewCell: UITableViewCell {
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var introduceLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
}

extension MainTableViewCell {
  func configure(_ dataSource: DataSource) {
    titleLabel.text = dataSource.name
    introduceLabel.text = dataSource.introduce
  }
}
