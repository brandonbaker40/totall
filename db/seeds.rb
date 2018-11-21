user = User.create(name: 'Drew Brees', email: 'drew@saints.com',
  password: 'foobar', password_confirmation: 'foobar')
user = User.create(name: 'Aaron Rodgers', email: 'aaron@packers.com',
    password: 'foobar2', password_confirmation: 'foobar2')

category = Category.create(name: 'Debt', active: true)
category = Category.create(name: 'Asset', active: true)
category = Category.create(name: 'Cash and Savings', active: true)
category = Category.create(name: 'Stocks and Funds', active: true)
category = Category.create(name: 'Retirement', active: true)


account = Account.create(name: 'Checking', category: Category.find(3), user: User.find(1), active: true, note: nil)
account.balances.create(value: 2000.00, estimate: false, note: '', created_at: Time.new(2018, 1, 1, 12, 0), updated_at: Time.new(2018, 1, 1, 12, 0))
account.balances.create(value: 2100.00, estimate: false, note: '', created_at: Time.new(2018, 2, 1, 12, 0), updated_at: Time.new(2018, 2, 1, 12, 0))
account.balances.create(value: 2220.10, estimate: false, note: '', created_at: Time.new(2018, 3, 1, 12, 0), updated_at: Time.new(2018, 3, 1, 12, 0))

account = Account.create(name: 'Savings', category: Category.find(3), user: User.find(1), active: true, note: nil)
account.balances.create(value: 5000.00, estimate: false, note: '', created_at: Time.new(2018, 1, 1, 12, 0), updated_at: Time.new(2018, 1, 1, 12, 0))
account.balances.create(value: 5500.00, estimate: true, note: 'forgot to check', created_at: Time.new(2018, 2, 1, 12, 0), updated_at: Time.new(2018, 2, 1, 12, 0))
account.balances.create(value: 5220.90, estimate: false, note: 'birthday money', created_at: Time.new(2018, 3, 1, 12, 0), updated_at: Time.new(2018, 3, 1, 12, 0))

account = Account.create(name: 'Roth IRA', category: Category.find(5), user: User.find(1), active: true, note: nil)
account.balances.create(value: 0.00, estimate: false, note: 'account opened', created_at: Time.new(2018, 1, 1, 12, 0), updated_at: Time.new(2018, 1, 1, 12, 0))
account.balances.create(value: 100.00, estimate: true, note: '', created_at: Time.new(2018, 2, 1, 12, 0), updated_at: Time.new(2018, 2, 1, 12, 0))
account.balances.create(value: 200.00, estimate: false, note: '', created_at: Time.new(2018, 3, 1, 12, 0), updated_at: Time.new(2018, 3, 1, 12, 0))

account = Account.create(name: '401k', category: Category.find(5), user: User.find(1), active: true, note: nil)
account.balances.create(value: 100000.00, estimate: false, note: '', created_at: Time.new(2018, 1, 1, 12, 0), updated_at: Time.new(2018, 1, 1, 12, 0))
account.balances.create(value: 99850.00, estimate: false, note: 'market drop', created_at: Time.new(2018, 2, 1, 12, 0), updated_at: Time.new(2018, 2, 1, 12, 0))
account.balances.create(value: 101000.00, estimate: false, note: '', created_at: Time.new(2018, 3, 1, 12, 0), updated_at: Time.new(2018, 3, 1, 12, 0))

account = Account.create(name: 'Stock', category: Category.find(4), user: User.find(1), active: true, note: nil)
account.balances.create(value: 40000.00, estimate: false, note: '', created_at: Time.new(2018, 1, 1, 12, 0), updated_at: Time.new(2018, 1, 1, 12, 0))
account.balances.create(value: 41000.00, estimate: false, note: '', created_at: Time.new(2018, 2, 1, 12, 0), updated_at: Time.new(2018, 2, 1, 12, 0))
account.balances.create(value: 50000.00, estimate: false, note: 'gift', created_at: Time.new(2018, 3, 1, 12, 0), updated_at: Time.new(2018, 3, 1, 12, 0))

account = Account.create(name: '529', category: Category.find(4), user: User.find(1), active: true, note: 'Billy')
account.balances.create(value: 1000.00, estimate: false, note: '', created_at: Time.new(2018, 1, 1, 12, 0), updated_at: Time.new(2018, 1, 1, 12, 0))
account.balances.create(value: 1001.00, estimate: false, note: '', created_at: Time.new(2018, 2, 1, 12, 0), updated_at: Time.new(2018, 2, 1, 12, 0))
account.balances.create(value: 1010.00, estimate: true, note: '', created_at: Time.new(2018, 3, 1, 12, 0), updated_at: Time.new(2018, 3, 1, 12, 0))

account = Account.create(name: 'Old Savings', category: Category.find(3), user: User.find(1), active: false, note: 'Old Chase account')
account.balances.create(value: 400.00, estimate: false, note: '', created_at: Time.new(2017, 11, 1, 12, 0), updated_at: Time.new(2017, 11, 1, 12, 0))
account.balances.create(value: 300.00, estimate: false, note: '', created_at: Time.new(2017, 12, 1, 12, 0), updated_at: Time.new(2017, 12, 1, 12, 0))
account.balances.create(value: 200.00, estimate: false, note: '', created_at: Time.new(2018, 1, 1, 12, 0), updated_at: Time.new(2018, 1, 1, 12, 0))
account.balances.create(value: 100.00, estimate: false, note: '', created_at: Time.new(2018, 2, 1, 12, 0), updated_at: Time.new(2018, 2, 1, 12, 0))
account.balances.create(value: 0.00, estimate: false, note: 'closed account', created_at: Time.new(2018, 3, 1, 12, 0), updated_at: Time.new(2018, 3, 1, 12, 0))

account = Account.create(name: 'Car', category: Category.find(2), user: User.find(1), active: true, note: 'Acura')
account.balances.create(value: 10400.00, estimate: true, note: '', created_at: Time.new(2018, 1, 1, 12, 0), updated_at: Time.new(2017, 11, 1, 12, 0))
account.balances.create(value: 10300.00, estimate: true, note: '', created_at: Time.new(2018, 2, 1, 12, 0), updated_at: Time.new(2017, 12, 1, 12, 0))
account.balances.create(value: 10200.00, estimate: true, note: '', created_at: Time.new(2018, 3, 1, 12, 0), updated_at: Time.new(2018, 1, 1, 12, 0))

account = Account.create(name: 'Mortgage', category: Category.find(1), user: User.find(1), active: true, note: '')
account.balances.create(value: -240000.00, estimate: true, note: '', created_at: Time.new(2018, 1, 1, 12, 0), updated_at: Time.new(2017, 11, 1, 12, 0))
account.balances.create(value: -239000.00, estimate: true, note: '', created_at: Time.new(2018, 2, 1, 12, 0), updated_at: Time.new(2017, 12, 1, 12, 0))
account.balances.create(value: -238000.00, estimate: true, note: '', created_at: Time.new(2018, 3, 1, 12, 0), updated_at: Time.new(2018, 1, 1, 12, 0))

account = Account.create(name: 'Checking2', category: Category.find(3), user: User.find(2), active: true, note: nil)
account.balances.create(value: 3300.00, estimate: false, note: '', created_at: Time.new(2017, 1, 1, 12, 0), updated_at: Time.new(2018, 1, 1, 12, 0))
account.balances.create(value: 3100.00, estimate: false, note: '', created_at: Time.new(2017, 2, 1, 12, 0), updated_at: Time.new(2018, 2, 1, 12, 0))
account.balances.create(value: 3220.10, estimate: false, note: '', created_at: Time.new(2017, 3, 1, 12, 0), updated_at: Time.new(2018, 3, 1, 12, 0))
