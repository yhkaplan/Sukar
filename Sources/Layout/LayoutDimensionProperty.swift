//
//  LayoutDimensionProperty.swift
//  Sukar
//
//  Created by josh on 2019/01/24.
//  Copyright © 2019年 yhkaplan. All rights reserved.
//

import UIKit

public struct LayoutDimensionProperty<Dimension: LayoutDimension> {
    let dimension: Dimension
}

extension LayoutDimensionProperty {
    func equal(to constant: CGFloat) {
        dimension.constraint(equalToConstant: constant).isActive = true
    }

    public static func ==(lhs: LayoutDimensionProperty<Dimension>, rhs: CGFloat) {
        lhs.equal(to: rhs)
    }
}
