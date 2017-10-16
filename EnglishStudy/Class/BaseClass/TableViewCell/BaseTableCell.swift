//
//  BaseTableCell.swift
//  EnglishStudy
//
//  Created by Neo Nguyen on 10/16/17.
//  Copyright © 2017 Neo Nguyen. All rights reserved.
//

import UIKit

class BaseTableCell: UITableViewCell {
    
    /**
     data for cell
     */
    var dataCell : Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    /**
     reload cell with dataCell
     */
    func reloadCell()  {}
}
