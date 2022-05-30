//
//  BottomSheetNavigationPullBar.swift
//  BottomSheet
//
//  Created by Mikhail Maslo on 14.11.2021.
//  Copyright © 2021 Joom. All rights reserved.
//

import UIKit

public class BottomSheetNavigationPullBar: UIView {
    enum Style {
        static var size = CGSize(width: 40, height: 4)
        static var color = UIColor.lightGray
    }
    
    var color: UIColor? {
        didSet {
            updateStyle()
        }
    }
    
    private func updateStyle() {
        centerView.backgroundColor = color ?? Style.color
    }
    
    private let centerView: UIView = {
        let view = UIView()
        view.frame.size = Style.size
        view.backgroundColor = Style.color
        view.layer.cornerRadius = Style.size.height * 0.5
        return view
    }()

    public init() {
        super.init(frame: .zero)
        
        backgroundColor = .clear
        
        setupSubviews()
    }

    required init?(coder: NSCoder) {
        preconditionFailure("init(coder:) has not been implemented")
    }

    private func setupSubviews() {
        addSubview(centerView)
    }

    public override func layoutSubviews() {
        super.layoutSubviews()

        centerView.center = bounds.center
    }
}
