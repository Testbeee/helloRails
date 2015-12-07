class Receipt < ActiveRecord::Base
  belongs_to :user
  belongs_to :copy
end
