class Patient < ActiveRecord::Base
  belongs_to :account
  has_many :notes
end
