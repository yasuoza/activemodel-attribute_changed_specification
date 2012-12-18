require File.expand_path('../lib/active_model/attribute_changed_specification/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'activemodel-attribute_changed_specification'
  gem.version       = ActiveModel::AttributeChangedSpecification::VERSION
  gem.authors       = 'Yasuharu Ozaki'
  gem.email         = 'yasuharu.ozaki@gmail.com'
  gem.description   = %q{Expand _changed? method. Enable to specify changed attribute value}
  gem.summary       = %q{Expand _changed? method. Enable to specify changed attribute value}
  gem.homepage      = 'https://github.com/YasuOza/activemodel-attribute_changed_specification'
  gem.require_paths = ['lib']

  gem.add_dependency 'activemodel'
  gem.add_development_dependency 'minitest', '>= 3'
end
