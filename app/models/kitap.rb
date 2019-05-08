class Kitap < ApplicationRecord
    has_attached_file :resim, styles: { medium: "600x400>", thumb: "600x400>" }, default_url:
"/images/:style/missing.png"
validates_attachment_content_type :resim, content_type: /\Aimage\/.*\z/

belongs_to :user
has_one :like, :dependent => :destroy
end
