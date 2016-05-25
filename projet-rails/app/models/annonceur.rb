class Annonceur < ActiveRecord::Base
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }

	validates_attachment_content_type :image, content_type: /\Aimage/
	validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/, /gif\Z/]
	validates_with AttachmentSizeValidator,
		attributes: :image,
		less_than: 1.megabytes
	do_not_validate_attachment_file_type :image
end
