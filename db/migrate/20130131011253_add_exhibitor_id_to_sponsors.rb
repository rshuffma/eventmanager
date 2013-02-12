class AddExhibitorIdToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :exhibitor_id, :integer
  end
end
