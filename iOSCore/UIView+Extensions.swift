//
//  UIView+Extensions.swift
//  SelfCare
//
//  Created by Gerald Çollaku on 08.01.19.
//  Copyright © 2019 Exozet Berlin GmbH. All rights reserved.
//

import Foundation
import UIKit

extension UIView
{
    
func fadeIn(duration: TimeInterval = 0.3, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
    UIView.animate(withDuration: duration, delay: 0, options: UIView.AnimationOptions.curveEaseIn, animations: {
        self.alpha = 1.0
    }, completion: completion)
}

func fadeOut(duration: TimeInterval = 0.3, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
    UIView.animate(withDuration: duration, delay: 0, options: UIView.AnimationOptions.curveEaseIn, animations: {
         self.alpha = 0.0
    }, completion: completion)
}

}
extension UIView {
    func animateBorderColor(borderWidth:CGFloat,toColor: UIColor, duration: Double) {
        let animation:CABasicAnimation = CABasicAnimation(keyPath: "borderColor")
        animation.fromValue = layer.borderColor
        animation.toValue = toColor.cgColor
        animation.duration = duration
        
        layer.add(animation, forKey: "borderColor")
        layer.borderWidth = borderWidth
        layer.borderColor = toColor.cgColor
        
    }
}
