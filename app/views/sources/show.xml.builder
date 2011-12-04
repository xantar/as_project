xml.instruct!
xml.source do
  xml.source(@source.name)
  @source.dragons.each do |d|
    xml.dragon do
      xml.number(d.number)
      xml.group(d.group.name)
      xml.status(d.status.name)
      if d.weights.count > 0
        xml.weight(d.weights.last.weight)
      end
      xml.sex(d.sex)
      if d.locations.count > 0
        xml.location(d.locations.last.short)
      end
    end
  end
end
