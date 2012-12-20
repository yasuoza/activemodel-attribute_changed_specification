# This code is mostly derived from rails/activemodel/test/cases/dirty_test.rb

require 'minitest/autorun'
require 'active_model'
require 'active_model/attribute_changed_specification/specification'

class DirtyTest < ActiveModel::TestCase
  class DirtyModel
    include ActiveModel::Dirty
    define_attribute_methods [:name, :color]

    def initialize
      @name = nil
      @color = nil
    end

    def name
      @name
    end

    def name=(val)
      name_will_change!
      @name = val
    end

    def color
      @color
    end

    def color=(val)
      color_will_change! unless val == @color
      @color = val
    end

    def save
      @previously_changed = changes
      @changed_attributes.clear
    end
  end

  setup do
    @model = DirtyModel.new
  end

  test "setting attribute will result in change" do
    assert !@model.name_changed?
    assert !@model.color_changed?

    assert !@model.name_changed?(from: nil, to: 'name')
    assert !@model.name_changed?(from: nil, to: nil)

    assert !@model.color_changed?(from: nil, to: 'name')
    assert !@model.color_changed?(from: nil, to: nil)
  end

  test "detect initialize change" do
    @model.name = 'Yasu'
    assert @model.changed?

    assert @model.name_changed?
    assert @model.name_changed?(from: nil, to: 'Yasu')
    assert !@model.name_changed?(from: nil, to: 'Paul')

    assert !@model.color_changed?
    assert !@model.color_changed?(from: nil, to: nil)
  end

  test "detect update" do
    @model.color = 'red'
    @model.save
    @model.color = 'green'

    assert @model.color_changed?
    assert @model.color_changed?(from: 'red', to: 'green')
  end
  
  test "dectect change passing from or to" do
    @model.color = 'red'
    @model.save
    @model.color = 'green'

    assert @model.color_changed?
    assert @model.color_changed?(from: 'red')

    assert @model.color_changed?(to: 'green')  
  end
end
