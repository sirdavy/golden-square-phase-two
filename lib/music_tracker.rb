class MusicTracker
  def initialize
    @music_list = []
  end

  def add(text)
    if @music_list.include?(text)
      fail "Track already added."
    else
      @music_list << text
    end
  end

  def view
    if @music_list.empty?
      fail "List is empty"
    else
      return @music_list
    end
  end
end
