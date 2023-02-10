class CreateYourScaffolds < ActiveRecord::Migration[7.0]
  def change
    create_table :your_scaffolds do |t|
      t.string :mystring

      t.timestamps
    end
  end
end
