xml.instruct!
xml.morph_type do
  @morph_type.morphs.each do |m|
    xml.dragon do
      xml.number(m.dragon.number)
      xml.group(m.dragon.group.name)
      xml.status(m.dragon.status.name)
      xml.weight(m.dragon.weights.sort_by(&:weighed_on).last.weight)
      xml.sex(m.dragon.sex)
    end
  end
end
