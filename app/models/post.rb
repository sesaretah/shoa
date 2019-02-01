class Post < ActiveRecord::Base
  belongs_to :river
  before_create :set_uuid

  def set_uuid
    self.uuid = SecureRandom.uuid
  end

  def id
    self.uuid
  end

  def find(uuid)
    Post.find_by_uuid(uuid)
  end
end
