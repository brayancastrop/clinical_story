class Account < ActiveRecord::Base
  has_one :user
  has_many :memberships
end
