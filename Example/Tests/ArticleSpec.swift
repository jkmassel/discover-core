import Quick
import Nimble
import DiscoverCore

class ArticleSpec: QuickSpec {
    override func spec() {
        describe("Articles") {

            it("can store properties") {
                let id = UUID().uuidString
                let title = UUID().uuidString
                let content = UUID().uuidString
                let image = URL(string: "https://google.com/" + UUID().uuidString)!
                let source = URL(string: "https://google.com/" + UUID().uuidString)!

                let article = Article(id: id, title: title, content: content, image: image, source: source)

                expect(id).to(equal(article.id))
                expect(title).to(equal(article.title))
                expect(content).to(equal(article.content))
                expect(image).to(equal(image))
                expect(source).to(equal(source))
            }
        }
    }
}
