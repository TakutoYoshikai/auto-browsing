require "selenium-webdriver"
driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://news.yahoo.co.jp/"

while true do 
  a_list = driver.find_elements(:tag_name, "a")
  if a_list.length == 0
    driver.navigate.to "https://news.yahoo.co.jp/"
    next
  end
  a = a_list[rand(a_list.length)]
  driver.navigate.to a.attribute("href")
  sleep(5)
end
