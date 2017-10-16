//
//  TestItem.swift
//  EnglishStudy
//
//  Created by Neo Nguyen on 10/10/17.
//  Copyright © 2017 Neo Nguyen. All rights reserved.
//

import UIKit

class TestItem: NSObject {
    
    public private(set) var title : String = ""
    public private(set) var questions : [QuestionItem] = [QuestionItem]()
    
    override init() {
        super.init()
        self.title = "Test title in here"
        
        let question = QuestionItem.init()
        self.questions.append(question)
        self.questions.append(question)
        self.questions.append(question)
        
    }
}
