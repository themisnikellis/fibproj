class CreateSubscribers < ActiveRecord::Migration[7.0]
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :email
      t.string :contact_num
      t.string :address
      t.string :vatno
      t.string :taxoffice


      t.timestamps
    end
  end
end
