class Account < ActiveRecord::Base
  has_one :user
  has_many :memberships
  has_many :patients
end
