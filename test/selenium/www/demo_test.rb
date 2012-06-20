require 'rubygems'
require 'selenium-webdriver'
require 'minitest/autorun'

class TestParaDemo1 < MiniTest::Unit::TestCase

  #override random test run ordering
  i_suck_and_my_tests_are_order_dependent!
  def test_order
  :alpha
  end
  
  def setup
   @driver = Selenium::WebDriver.for(:remote, :url => "http://192.168.1.6:4444/wd/hub")

  end

  def teardown
   @driver.quit
  end

  def aftertest
    puts "tests are over"

  end

  def test_for_page1
    puts "1Page1" 
    @driver.get "http://www.google.com"  

  end

    def test_for_page2
   puts "1Page2" 
   @driver.get "http://www.msn.com"  
   end

    def test_for_page3
   puts "1Page3"
   @driver.get "http://www.yahoo.com"  
   end

    def test_for_page4
   puts "1Page4"
   @driver.get "http:/www.bing.com"  
   end


 end
