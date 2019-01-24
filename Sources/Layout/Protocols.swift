//
//  Protocols.swift
//  Sukar
//
//  Created by josh on 2019/01/24.
//  Copyright © 2019年 yhkaplan. All rights reserved.
//

import UIKit

public protocol LayoutAnchor {
    func constraint(equalTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
    func constraint(greaterThanOrEqualTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
    func constraint(lessThanOrEqualTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
}

public protocol LayoutDimension {
    func constraint(equalToConstant c: CGFloat) -> NSLayoutConstraint
}
