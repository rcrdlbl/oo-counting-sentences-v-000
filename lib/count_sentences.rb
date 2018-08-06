require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    senten = self.split(/[.!?]/)
    senten.reject!{|s| s.empty?}
    return senten.length
  end
end
