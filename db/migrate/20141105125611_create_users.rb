class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :second_name

    end
  end
end
