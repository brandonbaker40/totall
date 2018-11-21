bin/rails destroy model Category
bin/rails destroy model Account
bin/rails destroy model Balance

bin/rails generate model Category name:string active:boolean
bin/rails generate model Account name:string active:boolean note:text category:references user:references
bin/rails generate model Balance value:decimal estimate:boolean note:text account:references
bin/rails generate model User name:string email:string password_digest:string


#class Account < ApplicationRecord
#  belongs_to :category
#  has_many :balances, dependent: :destroy
#  validates :name, uniqueness: true, presence: true,
#                    length: { minimum: 3 }
#  validates :category, presence: true
#end
#class Balance < ApplicationRecord
#  belongs_to :account
#  validates :value, presence: true
#end
