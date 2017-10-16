//
//  NSObject+Extension.swift
//  EnglishStudy
//
//  Created by Neo Nguyen on 10/5/17.
//  Copyright © 2017 Neo Nguyen. All rights reserved.
//

import Foundation

extension NSObject{
    
    var className: String {
        return String(describing: type(of: self))
    }
    
    class var className: String {
        return String(describing: self)
    }
}
