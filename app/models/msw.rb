class Msw < ApplicationRecord
  attr_reader :results

  BASE_QUERY_STRING = "http://magicseaweed.com/api/#{ENV.fetch('MSW_API_KEY')}/forecast/?spot_id="
  SURF_SPOTS = [
    {id: 370,
     name: 'Cape Ann'},
    {id: 369,
     name: 'The Wall'}
   ].freeze

  def get_surf(surf_spot)
    raw_results = RestClient.get("#{BASE_QUERY_STRING}#{surf_spot}")
    @results = Oj.load(raw_results)
  end

end
