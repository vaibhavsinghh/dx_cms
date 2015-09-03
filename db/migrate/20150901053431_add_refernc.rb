class AddRefernc < ActiveRecord::Migration
  def up
 
    add_foreign_key :employees, :departments, column: :dept_id, primary_key: :dept_id   
  end

  def down
  	remove_foreign_key :employees, :departments
  end
end
