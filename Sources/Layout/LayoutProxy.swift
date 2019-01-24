//
//  LayoutProxy.swift
//  Sukar
//
//  Created by josh on 2019/01/24.
//  Copyright © 2019年 yhkaplan. All rights reserved.
//

import UIKit

public final class LayoutProxy {

    public lazy var leading = property(with: view.leadingAnchor)
    public lazy var trailing = property(with: view.trailingAnchor)
    public lazy var top = property(with: view.topAnchor)
    public lazy var bottom = property(with: view.bottomAnchor)
    public lazy var width = dimensionProperty(with: view.widthAnchor)
    public lazy var height = dimensionProperty(with: view.heightAnchor)

    private let view: UIView

    init(view: UIView) {
        self.view = view
    }

    private func dimensionProperty<D: LayoutDimension>(with dimension: D) -> LayoutDimensionProperty<D> {
        return LayoutDimensionProperty(dimension: dimension)
    }

    private func property<A: LayoutAnchor>(with anchor: A) -> LayoutProperty<A> {
        return LayoutProperty(anchor: anchor)
    }

}
