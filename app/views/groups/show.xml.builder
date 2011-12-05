xml.instruct!
xml.group do
  @group.dragons.each do |d|
    xml.dragon do
      xml.number(d.number)
      if(d.clutch)
        xml.clutch(d.clutch.name)
      end
      xml.source(d.source.name)
      xml.group(d.group.name)
      xml.status(d.status.name)
      if d.weights.count > 0
        xml.weight(d.weights.sort_by(&:weighed_on).last.weight)
      end
      xml.sex(d.sex)
    end
  end
end
