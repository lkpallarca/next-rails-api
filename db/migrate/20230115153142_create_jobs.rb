class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.text :summary
      t.string :status
      t.integer :salary_offer
      t.string :location
      t.datetime :target_deadline

      t.timestamps
    end
  end
end
