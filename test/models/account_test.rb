require 'test_helper'

class AccountTest < ActiveSupport::TestCase

  def setup
    @user = User.create(name: "Example User", email: "user@example.com",
      password: "foobar", password_confirmation: "foobar")

    @category = Category.create(name: 'Retirement', active: true)

    @account = @user.accounts.create(name: 'Checking', category: @category, active: true)
  end

  test "should be valid" do
    assert @account.valid?
  end

  test "name should be present" do
    @account.name = nil
    assert_not @account.valid?
  end

  test "name should not be too long" do
    @account.name = "a" * 26
    assert_not @account.valid?
  end

  test "name should not be too short" do
    @account.name = "aa"
    assert_not @account.valid?
  end

  test "active should be present" do
    @account.active = nil
    assert_not @account.valid?
  end

  test "note should not be too long" do
    @account.note = "a" * 201
    assert_not @account.valid?
  end

  test "category should be present" do
    @account.category_id = nil
    assert_not @account.valid?
  end

  test "user should be present" do
    @account.user_id = nil
    assert_not @account.valid?
  end

  # name, active, note, category, user
end
