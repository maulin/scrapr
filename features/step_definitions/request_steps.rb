When /^I make a GET request to scraper with "(.*?)"$/ do |filename|
  page.driver.header "Content-Type", 'application/json'
  page.driver.header "Accept", 'application/json'
  page.driver.get(api_scrapers_path, :url => "#{Rails.root}/spec/factories/#{filename}")
end
