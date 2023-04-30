
import UIKit

extension NSMutableAttributedString {
    
    func fullRange() -> NSRange {
        let nsString = self.string as NSString
        return nsString.range(of: self.string)
    }
    
    func addingAttributes(
        _ attributes: [NSAttributedString.Key: Any],
        range: NSRange
    ) -> Self {
        addAttributes(attributes, range: range)
        return self
    }
    
    func addingAttributes(
        _ attributes: [NSAttributedString.Key: Any]
    ) -> Self {
        addingAttributes(attributes, range: fullRange())
    }
    
    func foregroundColor(_ color: UIColor) -> Self {
        addingAttributes(.foregroundColor(color))
    }
    
    func font(_ font: UIFont) -> Self {
        addingAttributes(.font(font))
    }
    
    func lineHeight(_ lineHeight: CGFloat) -> Self {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = lineHeight
        paragraphStyle.maximumLineHeight = lineHeight
        return addingAttributes(.lineHeight(lineHeight))
    }
}
