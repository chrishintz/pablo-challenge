class Book < ApplicationRecord
  belongs_to :user

  validates :title,  :presence => true
  validates :author, :length => { maximum: 50 }

end
