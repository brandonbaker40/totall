require 'test_helper'

class BalanceTest < ActiveSupport::TestCase

  def setup
    @user = User.create(name: "Example User", email: "user@example.com",
      password: "foobar", password_confirmation: "foobar")

    @category = Category.create(name: 'Retirement', active: true)

    @account = @user.accounts.create(name: 'Checking', category: @category, active: true)

    @balance = @account.balances.create(value: 2000.00, estimate: false)
  end

  test "should be valid" do
    assert @balance.valid?
  end

  test "value should be present" do
    @balance.value = nil
    assert_not @balance.valid?
  end

  test "value should not be too large" do
    @balance.value = 10000000.1
    assert_not @balance.valid?
  end

  test "value should not be negative" do
    @balance.value = -0.1
    assert_not @balance.valid?
  end

  test "value should not be an invalid currency" do
    invalid_values = [10.111, '$10.1111', 100.111, 1000.111]
    invalid_values.each do |invalid_value|
      @balance.value = invalid_value
      assert_not @balance.valid?, "#{invalid_value.inspect} should be invalid"
    end
  end

  test "value should be an valid currency" do
    valid_values = [10.11, 100.11, 100.1, 1000.1, 0]
    valid_values.each do |valid_value|
      @balance.value = valid_value
      assert @balance.valid?, "#{valid_value.inspect} should be valid"
    end
  end

  test "estimate should be present" do
    @balance.estimate = nil
    assert_not @balance.valid?
  end

  test "note should not be too long" do
    @balance.note = "a" * 201
    assert_not @balance.valid?
  end

  test "account should be present" do
    @balance.account_id = nil
    assert_not @balance.valid?
  end
end
