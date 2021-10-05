class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :favorites, dependent: :destroy


    before_validation { email.downcase! }
    validates :name,  presence: true, length: { maximum: 30 }
    validates :email, presence: true, uniqueness: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    has_secure_password
    validates :password, length: { minimum: 6 }
    mount_uploader :profile, ImageUploader

    def to_s
     name
    end
end


