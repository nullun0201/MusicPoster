class Content < ApplicationRecord
  mount_uploader :file, FileUploader
  has_many :comments, dependent: :destroy
end
