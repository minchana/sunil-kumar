class ProjectsUsers < ActiveRecord::Migration
  def change

    create_table :joined_tables do |t|
      t.references :user, index: true
      t.references :projects, index: true
   
  end
end
