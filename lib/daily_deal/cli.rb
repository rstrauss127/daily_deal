#CLI controller
class DailyDeal::CLI

  def call
    list_deals
    menu
    goodbye
  end

  def list_deals
    puts "Today's Daily Deals"
    puts <<-DOC.gsub /^\s*/, ''
      1. PCH Digital Pulse Massager - $27 - Still available!
      2. Lenovo ThinkPad 11E 11.6 - $199.99 - Still available!
    DOC
  end

  def menu

    input = nil
    while input != "exit"
        puts "Enter the number of the deal you'd like to know more about, or type list to view deals again, or type exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on deal 1..."
      when "2"
        puts "more info on deal 2..."
      when "list"
        list_deals
      else
        puts "Not sure what you want, type list or exit"
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more deals"
  end


end
