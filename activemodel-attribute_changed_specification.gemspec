require File.expand_path('../lib/active_model/attribute_changed_specification/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'activemodel-attribute_changed_specification'
  gem.version       = ActiveModel::AttributeChangedSpecification::VERSION
  gem.authors       = 'Yasuharu Ozaki'
  gem.email         = 'yasuharu.ozaki@gmail.com'
  gem.description   = %q{Expand _changed? method. Enable to specify changed attribute value}
  gem.summary       = %q{Expand _changed? method. Enable to specify changed attribute value}
  gem.homepage      = 'https://github.com/YasuOza/activemodel-attribute_changed_specification'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- test/*`.split("\n")
  gem.require_paths = ['lib']

  gem.add_dependency 'activemodel', '>= 3.2'
  gem.add_dependency 'activerecord', '>= 3.2'

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'minitest', '~> 4.7'
end
