class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates_presence_of :charge
  validates :client_id, uniqueness: { scope: :gym_id }

end

#Google dependent destroy
