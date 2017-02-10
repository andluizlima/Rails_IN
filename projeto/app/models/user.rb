class User < ActiveRecord::Base
    validates :name, length: {minimum: 1, maximum: 32}, presence: true
end
