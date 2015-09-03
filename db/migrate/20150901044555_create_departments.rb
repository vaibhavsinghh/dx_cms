class CreateDepartments < ActiveRecord::Migration
  def up
    create_table :departments, {:id => false} do |t|
      t.primary_key :dept_id
      t.string "dept_name"
      t.string "dept_head"
      t.string "location"
      t.integer "no_of_employee"

      t.timestamps null: false
    end
  end
  
  def down
    	drop_table :departments
  end
end
