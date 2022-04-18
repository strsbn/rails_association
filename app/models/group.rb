class Group < ApplicationRecord
  has_many :group_members, foreign_key: "group_id"
  has_many :users, through: :group_members, source: :user
end
