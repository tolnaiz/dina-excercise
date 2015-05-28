class Connectable < ActiveRecord::Base
  belongs_to :connectable, polymorphic: true
  belongs_to :permission
end
