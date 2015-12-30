Gem::Specification.new do |s|
  s.name = 'cosi-temp'
  s.version = '1.0.0'
  s.date = '2015-12-29'
  s.summary = "Cosi Temp"
  s.description = "A simple CLI tool to create a Project Update post or Meeting Minutes entry for the Clarkson Open Source Institute"
  s.authors = ["Benjamin Lannon"]
  s.email = 'brlannon118@gmail.com'
  s.homepage = 'https://github.com/lannonbr/cosi-temp'
  s.license = 'MIT'

  s.files = `git ls-files`.split($\)
  s.executables = ["cosi-temp"]
  s.require_paths = ["lib"]

  s.add_development_dependency 'bundler',  '~> 1.3'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
end
