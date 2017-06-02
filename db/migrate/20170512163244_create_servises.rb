class CreateServises < ActiveRecord::Migration
  def change
    create_table :servises do |t|
      t.integer :active_serv, null: false
      t.text :type_serv, null: false, limit: 64
      t.integer :price_serv, null: false
      t.datetime :time_of_payment, :default => nil
      t.references :user, foreign_key: true
      t.index :user_id

      t.timestamps null: false
    end
  end
  def up
    execute("ALTER TABLE servises ADD CONSTRAINT type_serv CHECK(type_serv IN('1', '2','3', '4','5', '6'))")
    execute("ALTER TABLE servises ADD CONSTRAINT active_serv CHECK(active_serv >= 0)")
  end

  def down
    execute("ALTER TABLE servises DROP CONSTRAINT type_serv")
    execute("ALTER TABLE servises DROP CONSTRAINT active_serv")
  end
end
