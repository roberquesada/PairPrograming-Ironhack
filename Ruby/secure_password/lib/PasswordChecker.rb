require "rspec"

class PasswordChecker
  def initialize
  end

  def check_password(email, password)
    check_length(password) && 
    contains_number?(password) &&
    contains_letter?(password) &&
    contains_symbol?(password) &&
    contains_uppercase?(password) &&
    contains_lowercase?(password) &&
    not_contain_email(email, password)
  end

  private
  def check_length(password)
    if password.size < 7
      false
    else
      true
    end
  end

  def contains_number?(password)
    password.match(/[0-9]/)? true : false
  end

  def contains_letter?(password)
    password.match(/[a-zA-Z]/)? true : false
  end

  def contains_symbol?(password)
    password.match(/\W|_/)? true : false
  end

  def contains_uppercase?(password)
    password.match(/[A-Z]/)? true : false
  end

  def contains_lowercase?(password)
    password.match(/[a-z]/)? true : false
  end

  def not_contain_email(email, password)
    # (\.)\w+
    cantContain = email.split("@")
    name = cantContain[0]
    domain = cantContain[1].gsub(/(\.)\w+$/, '')
    
    if password.match(name)
      false
    elsif password.match(domain)
      false
    else
      true      
    end
    
  end
end
