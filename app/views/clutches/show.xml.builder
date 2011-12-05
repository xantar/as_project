xml.instruct!
xml.clutch do
  xml.laid_on(@clutch.laid_on)
  xml.female(@clutch.f_dragon.number)
  xml.male(@clutch.m_dragon.number)
  xml.viable(@clutch.viable)
  xml.questionable(@clutch.questionable)
  xml.total(@clutch.total)
  xml.total_hatched(@clutch.hatches.sum(:hatchlings))
  xml.hatches do
    @clutch.hatches.each do |h|
      xml.hatch do
        xml.out_on(h.out_on)
        xml.hatchlings(h.hatchlings)
      end
    end
  end
  xml.dragons do
    @clutch.dragons.each do |d|
      xml.dragon do
        xml.number(d.number)
        xml.group(d.group.name)
        xml.status(d.status.name)
        xml.sex(d.sex)
      end
    end
  end
end
