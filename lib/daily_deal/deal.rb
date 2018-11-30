class DailyDeal::Deal
  attr_accessor :name, :price, :availability, :url
  def self.today
    #I should return a bunch of instnaces of Deal
    puts <<-DOC.gsub /^\s*/, ''
      1. Shark DuoClean Slim Upright Vacuum - $119 - Still available!
      2. SainSmart x Creality Ender - $179.99 - Still available!
    DOC

    deal_1 = self.new
    deal_1.name = "Shark DuoClean Slim Upright Vacuum"
    deal_1.price = "$119"
    deal_1.availability = true
    deal_1.url = "https://meh.com/"

    deal_2 = self.new
    deal_2.name = "SainSmart x Creality Ender"
    deal_2.price = "$179.99"
    deal_2.availability = true
    deal_2.url = "https://www.woot.com/offers/sainsmart-x-creality-ender-3-3d-printer?ref=w_cnt_gw_dly_wobtn"

    [deal_1, deal_2]
  end

end
