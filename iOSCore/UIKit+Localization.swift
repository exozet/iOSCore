//
//  UIKit+Localization.swift
//
//  Created by Philipp Homann on 02.08.18.
//  Copyright © 2018 Exozet Berlin GmbH. All rights reserved.
//

import UIKit

extension UITextField {
    
    @IBInspectable var localizedPlaceholder: String {
        get { return "" }
        set {
            self.placeholder = newValue.localized
        }
    }
    
    @IBInspectable var localizedText: String {
        get { return "" }
        set {
            self.text = newValue.localized
        }
    }
}

extension UITextView {
    
    @IBInspectable var localizedText: String {
        get { return "" }
        set {
            self.text = newValue.localized
        }
    }
}

extension UIBarItem {
    
    @IBInspectable var localizedTitle: String {
        get { return "" }
        set {
            self.title = newValue.localized
        }
    }
}

extension UILabel {
    
    @IBInspectable var localizedText: String {
        get { return "" }
        set {
            self.text = newValue.localized
        }
    }
}

extension UINavigationItem {
    
    @IBInspectable var localizedTitle: String {
        get { return "" }
        set {
            self.title = newValue.localized
        }
    }
}

extension UIButton {
    
    @IBInspectable var localizedTitle: String {
        get { return "" }
        set {
            self.setTitle(newValue.localized, for: .normal)
        }
    }
}

extension UISearchBar {
    
    @IBInspectable var localizedPrompt: String {
        get { return "" }
        set {
            self.prompt = newValue.localized
        }
    }
    
    @IBInspectable var localizedPlaceholder: String {
        get { return "" }
        set {
            self.placeholder = newValue.localized
        }
    }
}

extension UISegmentedControl {
    
    @IBInspectable var localized: Bool {
        get { return true }
        set {
            for index in 0..<numberOfSegments {
                let title = titleForSegment(at: index)!.localized
                setTitle(title, forSegmentAt: index)
            }
        }
    }
}
extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
}
