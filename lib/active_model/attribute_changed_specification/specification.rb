module AttributeChangedSpecification
  module ::ActiveModel
    module Dirty

      private

        def attribute_changed_with_specification?(attr, *args)
          if args.empty?
            attribute_changed_without_specification?(attr)
          else
            return false unless self.changes.include?(attr)
            from = args[0][:from]
            to   = args[0][:to] 
            
            if from && to
              self.changes[attr][0] == from && __send__(attr) == to
            elsif from
              self.changes[attr][0] == from
            else
              __send__(attr) == to
            end
          end
        end
        alias_method_chain :attribute_changed?, :specification

    end
  end
end
