class User < ApplicationRecord
    has_many :lists 
    has_many :tasks
end