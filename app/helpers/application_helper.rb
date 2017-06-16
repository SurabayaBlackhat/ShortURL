module ApplicationHelper
  def valid_http(url)
    if DOMAIN_VALID.include?(URI.parse(url).host)
      true
    else
      nil
    end
  end
end
