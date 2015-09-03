class CreateEmployees < ActiveRecord::Migration
  def up
    create_table :employees, {:id => false} do |t|
    	t.primary_key :emp_id
    	t.string "emp_name"
    	t.string "qualification"
    	t.date "dob"
    	t.date "date_of_joining"
    	t.integer "exp_in_years"
    	t.integer "dept_id"

      t.timestamps null: false
    end
    add_index("employees","dept_id")
  end
  def down
  	drop_table :employees
  end
end
