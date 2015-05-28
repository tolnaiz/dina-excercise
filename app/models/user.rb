class User < ActiveRecord::Base

  belongs_to :role
  has_many :connectables, as: :connectable
  has_many :permissions, through: :connectables, as: :connectable

  validates :name, presence: true

  def all_permissions
    permissions + role.permissions
  end

end
