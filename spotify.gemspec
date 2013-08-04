file_path = File.dirname(__FILE__)
Gem::Specification.new do |s|
  s.name        = 'spotify'
  s.version     = '0.0.1'
  s.date        = Date.today.to_s
  s.summary     = "Spotify API Wrapper"
  s.description = "Spotify API Wrapper."
  s.authors     = ["TJ Biddle"]
  s.email       = 'biddle.thomas@gmail.com'
  s.files       = Dir.glob(File.join('lib/**', '*.rb'))
  s.homepage    = 'http://www.TJBiddle.com'
end
