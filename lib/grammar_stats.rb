class GrammarStats
  
  def initialize
    @good = 0
    @bad = 0
  end

  def check(text)
    if text.chr == text.chr.upcase && ["?", ".", "!"].include?(text[-1])
      @good +=1
      return true
    else
      @bad +=1
      return false
    end
  end

  def percentage_good
    total = @good + @bad 
    percentage = (@good / total.to_f) * 100
    return percentage.round
  end
end

