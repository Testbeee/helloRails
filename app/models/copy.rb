class Copy < ActiveRecord::Base
    has_one :receipt
    has_one :user, through: :receipt
end
