class Task < ActiveRecord::Base
  belongs_to :user
  attr_accessible :done, :name, :user_id, :created_at
  validates :user, presence: true
  validates :name, presence: true, length: {minimum: 6}
end
