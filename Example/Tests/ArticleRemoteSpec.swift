import Quick
import Nimble
import DiscoverCore

class ArticleRemoteSpec: QuickSpec {
    override func spec() {
        describe("ArticleRemote") {
            let remote = ArticleRemote()

            it("can fetch articles") {
                waitUntil { done in
                    remote.getArticles { result in
                        switch result {
                        case .success(let articles):
                            expect(articles.count).to(beGreaterThan(1))
                            done()
                        case .failure(let err):
                            XCTFail(err.localizedDescription)
                        }
                    }
                }
            }
        }
    }
}
