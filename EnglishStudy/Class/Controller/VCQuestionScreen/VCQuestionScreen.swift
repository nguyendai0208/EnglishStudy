//
//  VCQuestionScreen.swift
//  EnglishStudy
//
//  Created by Neo Nguyen on 10/10/17.
//  Copyright © 2017 Neo Nguyen. All rights reserved.
//

import UIKit

class VCQuestionScreen: BaseController {

    @IBOutlet weak fileprivate var tbQuestions : UITableView!
    
    fileprivate var testItem = TestItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tbQuestions.rowHeight = UITableViewAutomaticDimension
        self.tbQuestions.estimatedRowHeight = 50
        self.tbQuestions.separatorInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 100, right: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
}

extension VCQuestionScreen : UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.testItem.questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = QuestionCell.className
        let questionItem = self.testItem.questions[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as! QuestionCell
        cell.dataCell = questionItem.question
        cell.reloadCell()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        self.performSegue(withIdentifier: Constant.SEQUE.OpenQuestionDetailScreen.rawValue, sender: nil)
    }
}
