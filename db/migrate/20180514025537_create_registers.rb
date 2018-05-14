class CreateRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :registers do |t|
      t.string :idhome
      t.float :var_1
      t.float :var_2
      t.float :var_3

      t.timestamps
    end
  end
end
