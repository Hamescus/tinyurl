class Link < ActiveRecord::Base

  belongs_to :user

  before_save :hex_the_link

  def hex_the_link
    self.secure_url = SecureRandom.hex
  end

  def to_param
    secure_url #.parameterize
  end
end
