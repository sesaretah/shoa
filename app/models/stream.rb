class Stream < ActiveRecord::Base
  belongs_to :river
  has_many :comments, :as => :commentable, :dependent => :destroy
  before_create :set_uuid

  def set_uuid
    self.uuid = SecureRandom.uuid
  end

  def id
    self.uuid
  end

  def find(uuid)
    Stream.find_by_uuid(uuid)
  end
end
