class Gym < ApplicationRecord
    has_many :memberships, dependent: :destroy #destroy all the memberships related to the gym destroyed
    has_many :clients, through: :memberships
end
