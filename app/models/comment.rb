class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, :polymorphic => true
  belongs_to :group, :class_name => "Stream", :foreign_key => "commentable_id"
  def set_uuid
    self.uuid = SecureRandom.uuid
  end

  def id
    self.uuid
  end

  def find(uuid)
    Comment.find_by_uuid(uuid)
  end
end
