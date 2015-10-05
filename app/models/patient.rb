class Patient < ActiveRecord::Base
  belongs_to :eps
  belongs_to :arl
  belongs_to :city
  belongs_to :user
   def self.search(search)
    where("first_name like '%#{search}%'  or second_name like '%#{search}%' 
    or first_surname like '%#{search}%'  or second_surname like '%#{search}%' 
    or email like '%#{search}%' or document like '%#{search}%' or address like 
    '%#{search}%'")
  end
end
