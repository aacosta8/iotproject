class CreateSwitches < ActiveRecord::Migration[5.1]
  def change
    create_table :switches do |t|
      t.string :idhome
      t.boolean :var_1, :default => false

      t.timestamps
    end
  end
end
