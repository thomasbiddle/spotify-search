file_path = File.dirname(__FILE__)
Gem::Specification.new do |s|
  s.name        = 'spotify-search'
  s.version     = '0.0.2'
  s.date        = Date.today.to_s
  s.summary     = "Spotify metadata API Wrapper"
  s.description = "Spotify metadata API Wrapper."
  s.authors     = ["TJ Biddle"]
  s.email       = 'biddle.thomas@gmail.com'
  s.files       = Dir.glob(File.join('lib/**', '*.rb'))
  s.homepage    = 'https://github.com/thomasbiddle/spotify-search'
  s.add_dependency("rest-client", "~> 1.6.7")
  s.add_dependency("json", "~> 1.8.1")
end
