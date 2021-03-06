class User < ActiveRecord::Base
  has_many :tweets
  has_secure_password
  validates_presence_of :username, :email, :password

  def slug
    slug = self.username.downcase.gsub(/[^a-z0-9]+/, '-')
  end

  def self.find_by_slug(slug)
    self.all.detect { |user| user.slug == slug }
  end

end
