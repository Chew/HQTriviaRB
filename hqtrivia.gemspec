Gem::Specification.new do |s|
  s.name = 'hqtrivia'
  s.version = '0.1.0'
  s.summary = 'An HQ Trivia API Wrapper in Ruby'
  s.description = 'An HQ Trivia (https://hqtrivia.com) API Wrapper in Ruby'
  s.authors = ['Chew']
  s.email = 'chew@chew.pw'
  s.files = Dir['lib/**/*.rb']
  s.homepage = 'https://github.com/Chew/HQTriviaRB'
  s.license = 'MIT'
  s.add_runtime_dependency 'json', '>= 2.0.0'
  s.add_runtime_dependency 'rest-client', '~> 2.1.0.rc1'
  s.required_ruby_version = '>= 2.2.4'

  s.metadata = {
    'bug_tracker_uri' => 'https://github.com/Chew/HQTriviaRB/issues',
    'changelog_uri' => 'https://github.com/Chew/HQTriviaRB/releases',
    'homepage_uri' => 'http://github.com/Chew/HQTriviaRB',
    'source_code_uri' => 'http://github.com/Chew/HQTriviaRB',
    'wiki_uri' => 'http://github.com/Chew/HQTriviaRB/wiki',
    'documentation_uri' => 'https://rubydocs.chew.pro/docs/hqtrivia'
  }
end
