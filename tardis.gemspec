# encoding: utf-8
$:.push File.expand_path '../lib', __FILE__
require 'tardis/version'

Gem::Specification.new do |spec|
  spec.name          = 'tardis'
  spec.summary       = 'tardis a time and space gem'
  spec.description   = %q{
    tardis a time and space gem
  }
  spec.authors       = ['Kurtis Rainbolt-Greene']
  spec.email         = ['kurtisrainboltgreene@gmail.com']
  spec.homepage      = 'http://krainboltgreene.github.com/tardis'

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.version        = Tardis::VERSION

  if RUBY_PLATFORM =~ /1\.8/
    spec.add_development_dependency 'minitest', '2.6.2'
    spec.add_dependency 'backports', '2.3.0'
  end
  spec.add_development_dependency 'yard', '0.7.3'
  spec.add_development_dependency 'kramdown', '0.13.3'
  spec.add_dependency 'rake', '0.9.2.2'

end


