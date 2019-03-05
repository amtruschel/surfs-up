class GoogleNews < ApplicationRecord

    def self.get_news
      news = News.new(ENV.fetch('GOOGLE_NEWS_API_KEY'))

      @results = news.get_everything(
        q: "world surf league + surfing",
        from: "#{(Date.today - 7).to_s}",
        to: "#{Date.today}",
        language: "en",
        sortBy: "relevancy",
        page: 1)
    end
end
