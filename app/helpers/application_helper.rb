module ApplicationHelper
    def admin?  
    if current_user.id == 1  
      return true  
    else  
      return false  
    end  
  end  
    
  def manager?  
    if current_user.manager
      return true  
    else  
      return false  
    end  
  end  

  def owner?(id)  
    if current_user.id == id  
      return true  
    else  
      return false  
    end  
  end 
  
  def access?(id)  
    unless id == 1
      if (admin? || manager? || owner?(id) ) 
        return true  
      else  
        return false  
      end  
    else
      if(admin?)
        return true
      else
        return false
      end
    end
  end  

  def highaccess?
      if ( admin? || manager? ) 
        return true  
      else  
        return false  
      end  
  end

  def sex(male)
    if male
      "Male"
    else
      "Female"
    end
  end
end
