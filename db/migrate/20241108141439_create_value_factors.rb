class CreateValueFactors < ActiveRecord::Migration[8.0]
  def change
    create_table :value_factors do |t|
      t.string :name
      t.string :description
      t.jsonb :criteria

      t.timestamps
    end
  end
end
