require 'active_support/lazy_load_hooks'
require 'active_model/attribute_changed_specification/version'

ActiveSupport.on_load(:active_record) do
  require 'active_model/attribute_changed_specification/specification'
end
