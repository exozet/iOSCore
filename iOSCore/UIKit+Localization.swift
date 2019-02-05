//
//  UIKit+Localization.swift
//
//  Created by Philipp Homann on 02.08.18.
//  Copyright © 2018 Exozet Berlin GmbH. All rights reserved.
//

import UIKit

extension UITextField {
    
    @IBInspectable public var localizedPlaceholder: String {
        get { return "" }
        set {
            self.placeholder = newValue.localized
        }
    }
    
    @IBInspectable public  var localizedText: String {
        get { return "" }
        set {
            self.text = newValue.localized
        }
    }
}

extension UITextView {
    
    @IBInspectable public var localizedText: String {
        get { return "" }
        set {
            self.text = newValue.localized
        }
    }
}

extension UIBarItem {
    
    @IBInspectable public var localizedTitle: String {
        get { return "" }
        set {
            self.title = newValue.localized
        }
    }
}

extension  UILabel  {
    
    @IBInspectable public var localizedText: String {
        get { return "" }
        set {
            self.text = newValue.localized
        }
    }
}

extension UINavigationItem {
    
    @IBInspectable public var localizedTitle: String {
        get { return "" }
        set {
            self.title = newValue.localized
        }
    }
}

extension UIButton {
    
    @IBInspectable public var localizedTitle: String {
        get { return "" }
        set {
            self.setTitle(newValue.localized, for: .normal)
        }
    }
}

extension UISearchBar {
    
    @IBInspectable public var localizedPrompt: String {
        get { return "" }
        set {
            self.prompt = newValue.localized
        }
    }
    
    @IBInspectable public var localizedPlaceholder: String {
        get { return "" }
        set {
            self.placeholder = newValue.localized
        }
    }
}

extension UISegmentedControl {
    
    @IBInspectable public var localized: Bool {
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
  public  var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
}
