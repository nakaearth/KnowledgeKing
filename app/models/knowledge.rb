class Knowledge < ActiveRecord::Base
  belongs_to :user
  scope :latest, order('updated_at desc')
  validates :title, :presence=>true
  validates :description, :presence=>true
end
