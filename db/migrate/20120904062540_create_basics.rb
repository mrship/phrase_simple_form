class CreateBasics < ActiveRecord::Migration
  def change
    create_table :basics do |t|
      t.string    :title
      t.string    :first_name
      t.string    :last_name
      t.string    :gender
      t.string    :occupation
      t.integer   :day_of_birth
      t.integer   :month_of_birth
      t.integer   :year_of_birth
      t.string    :address_line_1
      t.string    :address_line_2
      t.string    :town_city
      t.string    :county
      t.string    :postcode
      t.string    :country
      t.string    :work_phone_number
      t.string    :mobile_phone_number
      t.string    :home_phone_number
      t.string    :other_email_address
      t.integer   :day_moved_in
      t.integer   :month_moved_in
      t.integer   :year_moved_in
      t.string    :known_as_title
      t.string    :known_as_first_name
      t.string    :known_as_last_name

      t.timestamps
    end
  end
end
