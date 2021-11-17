//
//  Toast.swift
//  BaseMVVM
//
//  Created by 김종권 on 2021/10/16.
//

import UIKit
import Toast

class Toast {
    static var style: ToastStyle {
        var style = ToastStyle()
        style.messageFont = .systemFont(ofSize: 12.0)
        style.messageAlignment = .center
        style.cornerRadius = 4.0
        style.horizontalPadding = 20.0

        return style
    }

    static func show(message: String, aboveView: UIView? = nil, duration: TimeInterval = 2.0) {
        guard let optionalWindow = UIApplication.shared.delegate?.window, let window = optionalWindow, !message.isEmpty else { return }

        showToast(message: message, targetView: window, aboveView: aboveView, duration: duration)
    }

    static func showToast(message: String, targetView: UIView, aboveView: UIView?, duration: TimeInterval) {
        targetView.hideToast()

        let messageLabel = createMessageLabel(message)

        if let aboveView = aboveView {
            let messageSize = messageLabel.sizeThatFits(targetView.bounds.size)
            messageLabel.frame = CGRect(x: 0.0, y: 0.0, width: messageSize.width + 48, height: messageSize.height + 24)
            messageLabel.layer.cornerRadius = (messageSize.height + 24) / 2

            let point = CGPoint(x: targetView.frame.size.width / 2, y: aboveView.frame.origin.y - (messageLabel.frame.height / 2) - 12)
            targetView.showToast(messageLabel, duration: duration, point: point)
        } else {
            let frame = CGRect(x: 0.0, y: 0.0, width: targetView.frame.size.width - 32.0, height: 40.0)
            messageLabel.frame = frame

            targetView.showToast(messageLabel, duration: duration)
        }
    }

    static func createMessageLabel(_ text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = style.messageFont
        label.textColor = style.titleColor
        label.textAlignment = style.messageAlignment
        label.backgroundColor = style.backgroundColor
        label.numberOfLines = 0

        label.layer.cornerRadius = style.cornerRadius
        label.layer.masksToBounds = true

        return label
    }
}
