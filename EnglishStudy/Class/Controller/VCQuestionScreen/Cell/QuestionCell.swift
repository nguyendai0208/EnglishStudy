//
//  QuestionCell.swift
//  EnglishStudy
//
//  Created by Neo Nguyen on 10/16/17.
//  Copyright © 2017 Neo Nguyen. All rights reserved.
//

import UIKit

class QuestionCell: BaseTableCell {
    
    @IBOutlet weak var lbQuestion : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func reloadCell() {
        super.reloadCell()
        if let strQuestion = self.dataCell as? String{
            self.lbQuestion.text = strQuestion
        }
    }
}
