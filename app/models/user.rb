class User < ApplicationRecord
  has_secure_password
  has_many :books

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

  validates :first_name, :last_name,  :presence => true,
                                      :length => { :maximum => 25 }
  validates :username, :length => { :within => 5..25 },
                       :uniqueness => true
  validates :email,     :presence => true,
                        :length => { :maximum => 100 },
                        :format => EMAIL_REGEX
end
