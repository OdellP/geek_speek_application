class RemoveYearsOfExperienceFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :years_of_experience, :string
  end
end
