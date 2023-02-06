class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates_presence_of :gym_id, :client_id, :charge
  validates :client_id, uniqueness: { scope: :gym_id }

  #^^scope validates one or more attributes that are used to limit the uniqueness check
end

#Google dependent destroy
