class AddPaperclipToAnnonceur < ActiveRecord::Migration
  def change
  	add_attachment :annonceurs, :image
  end
end
