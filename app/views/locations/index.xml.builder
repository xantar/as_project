xml.instruct!
xml.locations do
  @locations.each do |l|
    xml.location do
      xml.dragon(l.dragon.number)
      xml.room(l.room)
      xml.column(l.column)
      xml.row(l.row)
      xml.cage(l.cage)
    end
  end
end
