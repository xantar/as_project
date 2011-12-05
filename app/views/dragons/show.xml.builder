xml.instruct!
xml.dragon do
  xml.number(@dragon.number)
  xml.source(@dragon.source.name)
  xml.group(@dragon.group.name)
  xml.status(@dragon.status.name)
  xml.sex(@dragon.sex)
  xml.locations do
    @dragon.locations.each do |l|
      xml.location do
        xml.moved_on(l.moved_on)
        xml.short(l.short)
        xml.room(l.room)
        xml.column(l.column)
        xml.row(l.row)
        xml.cage(l.cage)
      end
    end
  end
  xml.morphs do
    @dragon.morphs.each do |m|
      xml.morph do
        xml.name(m.morph_type.name)
      end
    end
  end
  xml.weights do
    @dragon.weights.each do |w|
      xml.weight do
        xml.date(w.weighed_on)
        xml.type(w.weight_type.name)
        xml.weight(w.weight)
      end
    end
  end
  xml.treatments do
    @dragon.treatments.each do |t|
      xml.treatment do
        xml.treated_on(t.treated_on)
        xml.medication(t.medication.name)
      end
    end
  end
  xml.clutches do
    @dragon.clutches.each do |c|
      xml.clutch do
        xml.laid_on(c.laid_on)
        if @dragon.male
          xml.female(c.f_dragon.number)
        else
          xml.male(c.m_dragon.number)
        end
        xml.viable(c.viable)
        xml.questionable(c.questionable)
        xml.total(c.total)
        xml.hatched(c.hatches.sum(:hatchlings))
      end
    end
  end
end
