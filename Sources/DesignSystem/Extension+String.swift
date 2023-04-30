
import FontService
import UIKit

extension String {
    
    var attributed: NSMutableAttributedString { .init(string: self) }
    
    var allRange: NSRange {
        let string = self as NSString
        return string.range(of: self)
    }
}

public extension String {
    
    func exemple(color: UIColor) -> NSMutableAttributedString {
        let attributedString = self
            .attributed
            .foregroundColor(color)
            .font(FontName.Roboto.black.font(size: 34))
            .lineHeight(60)
        return attributedString
    }
}
