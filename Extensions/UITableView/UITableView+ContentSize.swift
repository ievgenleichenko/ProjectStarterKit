//
//  UITableView+ContentSize.swift
//  GradeMiners
//
//  Created by Evgeniy Leychenko on 12.09.2018.
//  Copyright © 2018 TAS. All rights reserved.
//

import UIKit

extension UITableView {
    
    func constraintFrameHeightToContentSizeHeight() -> NSKeyValueObservation {
        return observe(\.contentSize, changeHandler: { (tableView, _) in
            if let heightConstraint = tableView.constraints.first(where: { $0.firstAttribute == .height && $0.secondAttribute == .notAnAttribute }) {
                heightConstraint.constant = tableView.contentSize.height
            } else {
                tableView.heightAnchor.constraint(equalToConstant: tableView.contentSize.height).isActive = true
            }
        })
    }
}
