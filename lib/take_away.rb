class TakeAway
  attr_reader :take_away

  def initialize(take_away)
    @take_away = take_away
  end

  def dispaly_menu
    @take_away.menu
  end
end
