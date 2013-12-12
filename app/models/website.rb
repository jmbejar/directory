class Website < ActiveRecord::Base
  validate :safe_url

  def safe_url
    errors.add(:url, "Invalid URL") if URI.parse(url).host.nil?
  end
end
