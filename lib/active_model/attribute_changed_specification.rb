require 'active_support/lazy_load_hooks'
require 'active_model/attribute_changed_specification/version'

ActiveSupport.on_load(:active_model) do
  require 'active_model/attribute_changed_specification/specification'
end
