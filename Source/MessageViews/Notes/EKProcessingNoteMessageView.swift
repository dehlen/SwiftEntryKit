//
//  EKProcessingNoteMessageView.swift
//  SwiftEntryKit
//
//  Created by Daniel Huri on 4/20/18.
//  Copyright (c) 2018 huri000@gmail.com. All rights reserved.
//

import UIKit

public class EKProcessingNoteMessageView: EKAccessoryNoteMessageView {
    
    // MARK: Props
    private var activityIndicatorView: UIActivityIndicatorView!
    private var noteMessageView: EKNoteMessageView!
    
    /** Activity indication can be turned off / on */
    public var isProcessing: Bool = true {
        didSet {
            if isProcessing {
                activityIndicatorView.startAnimating()
            } else {
                activityIndicatorView.stopAnimating()
            }
        }
    }
    
    // MARK: Setup
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public init(with content: EKProperty.LabelContent, activityIndicator: UIActivityIndicatorView.Style, color: UIColor) {
        super.init(frame: UIScreen.main.bounds)
        setup(with: content, activityIndicator: activityIndicator, color: color)
    }
    
    private func setup(with content: EKProperty.LabelContent, activityIndicator: UIActivityIndicatorView.Style, color: UIColor, setProcessing: Bool = true) {
        activityIndicatorView = UIActivityIndicatorView()
        activityIndicatorView.color = color
        activityIndicatorView.style = activityIndicator
        isProcessing = setProcessing
        accessoryView = activityIndicatorView
        super.setup(with: content)
    }
}
