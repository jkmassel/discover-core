import Foundation
import FeedKit

public struct ArticleRemote {
    private let feedURL = URL(string: "https://wordpress.com/discover-wordpress/feed/")!

    public typealias Response = (Result<[Article], Error>) -> Void

    public init() {}

    public func getArticles(callback: @escaping Response) {
        let parser = FeedParser(URL: feedURL)
        parser.parseAsync { result in
            switch result {
            case .success(let feed):
                let articles = feed.rssFeed?.items?.compactMap(parse) ?? []
                callback(.success(articles))
            case .failure(let err):
                callback(.failure(err))
            }
        }
    }

    private func parse(feedItem: RSSFeedItem) -> Article? {
        guard
            let id = feedItem.guid?.value,
            let title = feedItem.title,
            let body = feedItem.description,
            let urlString = feedItem.link,
            let url = URL(string: urlString),
            let imageUrlString = feedItem.media?.mediaThumbnails?.first?.attributes?.url,
            let imageUrl = URL(string: imageUrlString)
        else {
            return nil
        }


        return Article(id: id, title: title, content: body, image: imageUrl, source: url)
    }
}
