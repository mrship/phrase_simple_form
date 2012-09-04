class Basic < ActiveRecord::Base
  attr_accessible :title, :first_name, :last_name, :gender, :day_of_birth, :month_of_birth, :year_of_birth,
                  :address_line_1, :address_line_2, :town_city, :county, :postcode, :country, :phone_number

  def date_moved_in
  end
  
  def date_of_birth
  end
end
