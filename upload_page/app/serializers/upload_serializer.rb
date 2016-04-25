class UploadSerializer < ActiveModel::Serializer
  attributes :filename, :created_at, :status
  has_one :type

  def created_at
    object.created_at.strftime("%a, %b %d %l:%m %p")
  end
end