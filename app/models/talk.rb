class Talk < ActiveRecord::Base

  validates :title, presence: true

  belongs_to :user

  before_save :uri?

  def uri?
    uri = URI.parse(self.youtube_url)
    uri.kind_of?(URI::HTTP)
  rescue URI::InvalidURIError
    false
  end
end