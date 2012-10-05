class CreateBasics < ActiveRecord::Migration
  def change
    create_table :basics do |t|
      t.string    :waiver_of_premium
      t.string    :client_number

      t.timestamps
    end
  end
end
