class User < ActiveRecord::Base
  attr_accessible :email, :last_name, :name

  validates :email, presence : true
  validates :name, presence : true
  validates :last_name, presence : true
end
