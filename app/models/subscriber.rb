class Subscriber < ApplicationRecord
    validates :name, uniqueness: true
    validates :email, uniqueness: true
    validates :vatno, uniqueness: true
end
