class Client < ApplicationRecord
    has_many :memberships, dependent: :destroy
    has_many :gyms, through: :memberships

    validates :name, presence: true, on: :create
    # attr_writer :total_charge

    # def total_charge #getter
    #     self.memberships.sum(:charge)
    # end
end


# if Gym exists, return JSON data for the gym
# else return error with a status code

# 1. Route -> routes.rb
# 2. Controller action -> identify if one of default actions is needed
# 3. find(requires rescuing, rescue_from) VS find_by (requires if/else)
