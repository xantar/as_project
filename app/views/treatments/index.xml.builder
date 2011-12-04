xml.instruct!
xml.treatments do
  @treatments.each do |t|
    xml.dragon(t.dragon.number)
    xml.treated_on(t.treated_on)
    xml.medication(t.medication.name)
  end
end
