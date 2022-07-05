class ClientShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total

  def total
    self.object.memberships.pluck(:charge).sum
  end
end
