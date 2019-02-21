class News < ApplicationRecord
  attr_reader :results
  
    def get_news(search_term)
      news = News.new(ENV.fetch('GOOGLE_NEWS_API_KEY'))

      raw_results = news.get_everything(
        q: "surfing",
        from: "#{(Date.today - 7).to_s}",
        to: "#{Date.today}",
        language: "en",
        sortBy: "relevancy",
        page: 1)

      @results = Oj.load(raw_results)
    end
end
