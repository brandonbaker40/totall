require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.create(name: 'Retirement', active: true)
  end

  test "should be valid" do
    assert @category.valid?
  end

  test "name should be present" do
    @category.name = "     "
    assert_not @category.valid?
  end

  test "name should not be too long" do
    @category.name = "a" * 26
    assert_not @category.valid?
  end

  test "name should not be too short" do
    @category.name = "aa"
    assert_not @category.valid?
  end

  test "active should be present" do
    @category.active = nil
    assert_not @category.valid?
  end
end
