class MusicTracker
  
  def initialize
    @music_list = []
  end

  def add(text)
    @music_list << text
  end

  def view
    return @music_list
  end
  
end
