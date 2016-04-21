class Upload < ActiveRecord::Base
  validates :filename, presence: true
  belongs_to :user
end
