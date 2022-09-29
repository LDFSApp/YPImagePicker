//
//  YPBottomPagerView.swift
//  YPImagePicker
//
//  Created by Sacha DSO on 24/01/2018.
//  Copyright © 2016 Yummypets. All rights reserved.
//

import UIKit
import Stevia

final class YPBottomPagerView: UIView {
    
    var header = YPPagerMenu()
    var scrollView = UIScrollView()
    lazy var hairline: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(red:0.90, green:0.90, blue:0.90, alpha:1.00)
        return v
    }()
    
    convenience init() {
        self.init(frame: .zero)
        backgroundColor = YPConfig.colors.bottomBarBackgroundColor
        header.addSubview(hairline)
        hairline.translatesAutoresizingMaskIntoConstraints = false
        hairline.topAnchor.constraint(equalTo: header.topAnchor, constant: 0).isActive = true
        hairline.leftAnchor.constraint(equalTo: header.leftAnchor, constant: 0).isActive = true
        hairline.rightAnchor.constraint(equalTo: header.rightAnchor, constant: 0).isActive = true
        hairline.heightAnchor.constraint(equalToConstant: 1).isActive = true
        subviews(
            scrollView,
            header
        )
        layout(
            0,
            |scrollView|,
            0,
            |header| ~ YPConfig.bottomBarHeight
        )
        if #available(iOS 11.0, *) {
            header.Bottom == safeAreaLayoutGuide.Bottom
        } else {
            header.bottom(0)
        }
        header.svHeightConstraint?.constant = (YPConfig.hidesBottomBar || (YPConfig.screens.count == 1)) ? 0 : YPConfig.bottomBarHeight
        clipsToBounds = false
        setupScrollView()
    }

    private func setupScrollView() {
        scrollView.clipsToBounds = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false
        scrollView.backgroundColor = .magenta
    }
}
