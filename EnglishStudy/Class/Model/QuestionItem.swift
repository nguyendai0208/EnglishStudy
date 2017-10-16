//
//  QuestionItem.swift
//  EnglishStudy
//
//  Created by Neo Nguyen on 10/10/17.
//  Copyright © 2017 Neo Nguyen. All rights reserved.
//

import UIKit

class QuestionItem: NSObject {
    
    public private(set) var question : String = ""
    public private(set) var optionAnswer : [String] = [String]()
    
    override init() {
        super.init()
        
        self.question = "Noi dung cau hoi"
        self.optionAnswer.append("Phuong an 1")
        self.optionAnswer.append("Phuong an 2")
        self.optionAnswer.append("Phuong an 3")
        self.optionAnswer.append("Phuong an 4")
    }
}
