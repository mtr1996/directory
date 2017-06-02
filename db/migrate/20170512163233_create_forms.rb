class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.text :user_description, null: false, limit: 64
      t.text :hobbies, null: false, limit: 64
      t.text :bad_habits, null: false, limit: 64
      t.text :type_of_home, null: false, limit: 64
      t.text :purpose_of_acquaintance, null: false, limit: 64
      t.references :user, foreign_key: true
      t.index :user_id, unique:true

      t.timestamps null: false
    end
  end
def up
    execute("ALTER TABLE forms ADD CONSTRAINT bad_habits CHECK(bad_habits IN('Курение', 'Алкоголь'))")
    execute("ALTER TABLE forms ADD CONSTRAINT type_of_home CHECK(type_of_home IN('Своя квартира', 'Живу с родителями', 'Съемная квартира'))")
    execute("ALTER TABLE forms ADD CONSTRAINT purpose_of_acquaintance CHECK(purpose_of_acquaintance IN('Дружба', 'Серьезные отношения', 'Свободные отношения'))")
  end

  def down
    execute("ALTER TABLE forms DROP CONSTRAINT bad_habits")
    execute("ALTER TABLE forms DROP CONSTRAINT type_of_home")
    execute("ALTER TABLE forms DROP CONSTRAINT purpose_of_acquaintance")
end
end
