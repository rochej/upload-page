class Upload < ActiveRecord::Base
  validates :filename, presence: true
  belongs_to :type
  belongs_to :user
end
