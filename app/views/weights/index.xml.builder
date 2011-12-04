xml.instruct!
xml.weights do 
  @weights.each do |w|
    xml.number(w.dragon.number)
    xml.weighed_on(w.weighed_on)
    xml.weight(w.weight)
    xml.weight_type(w.weight_type.name)
  end
end
