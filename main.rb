require "selenium-webdriver"
driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://news.yahoo.co.jp/"

while true do 
  a_list = driver.find_elements(:tag_name, "a")
  a = a_list[rand(a_list.length)]
  driver.navigate.to a.attribute("href")
  sleep(7)
end
