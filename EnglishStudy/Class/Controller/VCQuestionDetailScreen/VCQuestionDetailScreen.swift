//
//  VCQuestionDetailScreen.swift
//  EnglishStudy
//
//  Created by Neo Nguyen on 10/16/17.
//  Copyright © 2017 Neo Nguyen. All rights reserved.
//

import UIKit

class VCQuestionDetailScreen: BaseController {
    
    @IBOutlet weak var lbQuestion : UILabel!
    
    var questionItem : QuestionItem?
    
    fileprivate var indexQuestion : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        self.loadViewWithQuestion(self.questionItem)
    }
    
    //MARK: Function
    /**
     reload view with question
     */
    fileprivate func loadViewWithQuestion(_ question : QuestionItem?){
        guard let questionData = questionItem else { return  }
        self.lbQuestion.text = questionData.question
    }
}
