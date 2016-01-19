class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_attached_file :image, styles: { medium: "750x750>", thumb: "235x235#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
