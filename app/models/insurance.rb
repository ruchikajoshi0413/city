class Insurance < ApplicationRecord
    mount_uploader :image, ImageUploader

    validates :image, presence: true
    validates :description, presence: true
end
