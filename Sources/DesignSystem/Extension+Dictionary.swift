
import UIKit

extension Dictionary where Key == NSAttributedString.Key, Value == Any {
    
    static func foregroundColor(_ color: UIColor) -> Self {
        let attributes: [NSAttributedString.Key: Any] = [.foregroundColor: color]
        return attributes
    }
    
    static func font(_ font: UIFont) -> Self {
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        return attributes
    }
    
    static func lineHeight(_ lineHeight: CGFloat) -> Self {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = lineHeight
        paragraphStyle.maximumLineHeight = lineHeight
        let attributes: [NSAttributedString.Key: Any] = [.paragraphStyle: paragraphStyle]
        return attributes
    }
}

