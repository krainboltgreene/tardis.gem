# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'tardis/version'


Gem::Specification.new do |spec|
  spec.name           = 'tardis'
  spec.summary        = 'TODO: Write a simple summary'
  spec.description    = %q{
    TODO: Write a simple paragraph description, and/or link to the README.
  }
  spec.authors        = ['Kurtis Rainbolt-Greene']
  spec.email          = ['kurtisrainboltgreene@gmail.com']
  spec.homepage       = 'http://github.com/krainboltgreene/tardis/'

  spec.files          = `git ls-files`.split('\n')
  spec.test_files     = `git ls-files -- {test,spec,features}/*`.split('\n')
  spec.executables    = `git ls-files -- bin/*`.split('\n').map{ |f| File.basename(f) }
  spec.require_paths  = ['lib']

  spec.version        = Tardis::VERSION

  spec.add_dependency 'rake'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'kramdown'
  spec.add_development_dependency 'require_relative' if RUBY_VERSION =~ /1\.8/

end
