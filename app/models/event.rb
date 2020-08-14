class Event < ApplicationRecord
    # validates_presence_of :title, :start_datetime, :location
    validates :title, length: {minimum: 3}
    # validate :start_datetime_cannot_be_in_the_past

    has_many :tickets
    has_many :bookmarks
    has_many :users, through: :tickets
    has_many :users, through: :bookmarks
    has_one :eventcategory
    has_one :category, through: :eventcategories

    private
    def start_datetime_cannot_be_in_the_past
        if start_datetime.present? && start_datetime < Time.now
            errors.add(:start_datetime, "can't be in the past")
        end
    end
end
