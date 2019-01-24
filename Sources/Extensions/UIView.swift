//
//  UIView.swift
//  Sukar
//
//  Created by josh on 2019/01/24.
//  Copyright © 2019年 yhkaplan. All rights reserved.
//

import UIKit

extension UIView {

    /// For two views
    public func layout(on parentView: UIView, closure: (LayoutProxy, LayoutProxy) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false

        let subViewProxy = LayoutProxy(view: self)
        let parentViewProxy = LayoutProxy(view: parentView)
        closure(subViewProxy, parentViewProxy)
    }

    /// For three views
    public func layout(on parentView: UIView, otherView: UIView, closure: (LayoutProxy, LayoutProxy, LayoutProxy) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false

        let subViewProxy = LayoutProxy(view: self)
        let parentViewProxy = LayoutProxy(view: parentView)
        let otherViewProxy = LayoutProxy(view: otherView)
        closure(subViewProxy, parentViewProxy, otherViewProxy)
    }

}
