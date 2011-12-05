xml.instruct!
xml.dragons do
  @dragons.each do |d|
    xml.dragon do
      xml.number(d.number)
      if d.clutch
        xml.source_clutch(d.clutch.name)
      end
      xml.source(d.source.name)
      xml.group(d.group.name)
      xml.status(d.status.name)
      if d.weights.count > 0
        xml.current_weight(d.weights.sort_by(&:weighed_on).last.weight)
      end
      xml.sex(d.sex)
      if d.locations.count > 0
        xml.current_location(d.locations.last.short)
      end
    end
  end
end
