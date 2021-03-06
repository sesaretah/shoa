class River < ActiveRecord::Base
  has_many :streams
  has_many :posts
  before_create :set_uuid

  def set_uuid
    self.uuid = SecureRandom.uuid
  end

  def id
    self.uuid
  end

  def find(uuid)
    River.find_by_uuid(uuid)
  end
end
