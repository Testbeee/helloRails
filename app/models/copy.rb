class Copy < ActiveRecord::Base
    belongs_to :book
    has_one :receipt
    has_one :user, through: :receipt

    before_save :check_state_and_enter_time

    protected
    def check_state_and_enter_time
        self.state ||= 0;
        self.enter_time ||= Date.today;
    end
end
