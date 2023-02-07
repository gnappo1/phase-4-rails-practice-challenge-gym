class ClientSerializer < ActiveModel::Serializer
  attributes :id, :age, :name, :total_charge
  has_many :memberships

  def total_charge #getter
    self.object.memberships.sum(:charge)
  end
  
end
