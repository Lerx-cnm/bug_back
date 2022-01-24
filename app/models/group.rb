class Group < ApplicationRecord
    has_many :users
    has_many :bugs, through: :users
end