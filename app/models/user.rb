class User < ApplicationRecord
  has_many :posts
  has_many :group_members, foreign_key: "user_id"
  has_many :groups, through: :group_members, source: :group
end
