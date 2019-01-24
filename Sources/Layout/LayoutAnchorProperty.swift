//
//  LayoutAnchorProperty.swift
//  Sukar
//
//  Created by josh on 2019/01/24.
//  Copyright © 2019年 yhkaplan. All rights reserved.
//

import UIKit

//TODO: rename to be LayoutAnchorProperty
public struct LayoutProperty<Anchor: LayoutAnchor> {
    let anchor: Anchor
}

extension LayoutProperty {

    func equal(to otherLayoutProperty: LayoutProperty, offsetBy constant: CGFloat = 0.0) {
        anchor.constraint(equalTo: otherLayoutProperty.anchor, constant: constant).isActive = true
    }

    func greaterThanOrEqual(to otherLayoutProperty: LayoutProperty, offsetBy constant: CGFloat = 0.0) {
        anchor.constraint(greaterThanOrEqualTo: otherLayoutProperty.anchor, constant: constant).isActive = true
    }

    func lessThanOrEqual(to otherLayoutProperty: LayoutProperty, offsetBy constant: CGFloat = 0.0) {
        anchor.constraint(lessThanOrEqualTo: otherLayoutProperty.anchor, constant: constant).isActive = true
    }

}

// MARK: - Operator overloads
extension LayoutProperty {

    public static func +(lhs: LayoutProperty<Anchor>, rhs: CGFloat) -> (LayoutProperty<Anchor>, CGFloat) {
        return (lhs, rhs)
    }

    public static func -(lhs: LayoutProperty<Anchor>, rhs: CGFloat) -> (LayoutProperty<Anchor>, CGFloat) {
        return (lhs, -rhs)
    }

    public static func ==(lhs: LayoutProperty<Anchor>, rhs: (layoutProperty: LayoutProperty<Anchor>, offset: CGFloat)) {
        lhs.equal(to: rhs.layoutProperty, offsetBy: rhs.offset)
    }

    public static func ==(lhs: LayoutProperty<Anchor>, rhs: LayoutProperty<Anchor>) {
        lhs.equal(to: rhs)
    }

    public static func >=(lhs: LayoutProperty<Anchor>, rhs: (layoutProperty: LayoutProperty<Anchor>, offset: CGFloat)) {
        lhs.greaterThanOrEqual(to: rhs.layoutProperty, offsetBy: rhs.offset)
    }

    public static func >=(lhs: LayoutProperty<Anchor>, rhs: LayoutProperty<Anchor>) {
        lhs.greaterThanOrEqual(to: rhs)
    }

    public static func <=(lhs: LayoutProperty<Anchor>, rhs: (layoutProperty: LayoutProperty<Anchor>, offset: CGFloat)) {
        lhs.lessThanOrEqual(to: rhs.layoutProperty, offsetBy: rhs.offset)
    }

    public static func <=(lhs: LayoutProperty<Anchor>, rhs: LayoutProperty<Anchor>) {
        lhs.lessThanOrEqual(to: rhs)
    }

}
