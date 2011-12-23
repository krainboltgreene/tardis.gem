# encoding: utf-8
require File.expand_path('../lib/tardis/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kurtis Rainbolt-Greene"]
  gem.email         = ["kurtisrainboltgreene@gmail.com"]
  gem.description   = 'tardis a time and space gem'
  gem.summary       = %q{}
  gem.homepage      = 'http://krainboltgreene.github.com/tardis/'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename f }
  gem.files         = `git ls-files`.split "\n"
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split "\n"
  gem.name          = "tardis"
  gem.require_paths = ["lib"]
  gem.version       = Tardis::VERSION

  gem.add_development_dependency 'yard', '0.7.3'
  gem.add_development_dependency 'kramdown', '0.13.3'
  gem.add_development_dependency 'rake', '0.9.2.2'
end


