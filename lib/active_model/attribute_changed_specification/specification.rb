module AttributeChangedSpecification
  module ::ActiveModel
    module Dirty

      private

        def attribute_changed_with_specification?(attr, *args)
          if args.empty?
            attribute_changed_without_specification?(attr)
          else
            return false unless self.changes.include?(attr)
            self.changes[attr][0] == args[0][:from] && __send__(attr) == args[0][:to]
          end
        end
        alias_method_chain :attribute_changed?, :specification

    end
  end
end
