class RepoContentFetcher
  class << self
    def fetch(repo_url=nil, path=nil)
      client = Octokit::Client.new(
        login: ENV['GITHUB_USERNAME'],
        password: ENV['GITHUB_PASSWORD']
      )
binding.pry
      client.contents("#{username}/#{repo_name}", path: path).content
    end

    def username
      # parse username from repo_url
    end

    def repo_name
      # parse repo_name from repo_url
    end
  end
end