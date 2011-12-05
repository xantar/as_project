xml.instruct!
xml.clutches do
  @clutches.each do |c|
    xml.clutch do
      xml.laid_on(c.laid_on)
      xml.male(c.m_dragon.number)
      xml.female(c.f_dragon.number)
      xml.viable(c.viable)
      xml.questionable(c.questionable)
      xml.total(c.total)
      xml.total_hatched(c.hatches.sum(:hatchlings))
      xml.comments(c.comments)
    end
  end
end
