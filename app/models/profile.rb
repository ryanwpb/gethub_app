class Profile
attr_reader :username
  def initialize(username)
    @username = username
  end

  private def get_response
    key = ENV['GITHUB_TOKEN']
    HTTParty.get("http://api.github.com/#{@username}.json")
    # file = File.read('west_palm_conditions.json')
    # data_hash = JSON.parse(file)
  end
end
