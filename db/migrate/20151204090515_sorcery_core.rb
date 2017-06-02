class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null => false
      t.string :crypted_password
      t.string :salt

    end

    add_index :users, :email, unique: true
  end
 def up
    execute("ALTER TABLE users ADD CONSTRAINT sex CHECK(sex IN('Мужской', 'Женский'))")
    execute("ALTER TABLE users ADD CONSTRAINT rating CHECK(rating >= 0)")
  end

  def down
    execute("ALTER TABLE users DROP CONSTRAINT sex")
    execute("ALTER TABLE users DROP CONSTRAINT rating")
  end

end
