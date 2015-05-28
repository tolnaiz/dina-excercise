class Role < ActiveRecord::Base

  has_many :connectables, as: :connectable
  has_many :permissions, through: :connectables, as: :connectable

  scope :begins_with, lambda {|char| where("name LIKE ?", "#{char}%")}
end
