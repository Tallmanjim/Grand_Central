class AddShortNameToProjects < ActiveRecord::Migration[5.0]
	def change
		add_column :projects, :shortname, :string, default: false
		remove_column :companies, :shortname
	end
end
