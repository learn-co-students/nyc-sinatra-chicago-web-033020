class CreateLandmarks < ActiveRecord::Migration

  #raise 'Write CreateLandmarks migration here'

  #commenting out the above line because I'm not sure what it's purpose is.
  def change
    create_table :landmarks do |t|
      t.string :name
      t.integer :figure_id
      t.integer :year_completed

      t.timestamps
    end
  end
end
