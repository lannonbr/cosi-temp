Gem::Specification.new do |s|
  s.name = 'cosi-temp'
  s.version = '0.1.0'
  s.date = '2015-12-28'
  s.summary = "Cosi Temp"
  s.description = "A simple CLI tool to create a Project Update post or Meeting Minutes entry for the Clarkson Open Source Institute"
  s.authors = ["Benjamin Lannon"]
  s.email = 'brlannon118@gmail.com'
  s.files = `git ls-files`.split($\)
  s.require_paths = ["lib"]
  s.executables = ["cosi-temp"]
  s.homepage = 'https://github.com/lannonbr/cosi-temp'
  s.license = 'MIT'
end
