import Foundation
import NSString_stripHtml

public struct Article {
    public let id: String
    public let title: String
    public let content: String
    public let source: URL
    public let image: URL

    public init(id: String, title: String, content: String, image: URL, source: URL) {
        self.id = id
        self.title = title
        self.content = NSString(string: content).stripHtml()
        self.image = image
        self.source = source
    }
}

extension Article: Codable {} 
