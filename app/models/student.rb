class Student < ApplicationRecord
    belongs_to :instructor

    validates :name, presence: true
    validates :age, greater_than: 17

end
