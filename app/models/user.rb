class User < ApplicationRecord
    belongs_to :group
    has_many :bugs
end