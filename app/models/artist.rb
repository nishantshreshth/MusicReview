class Artist < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, styles: { medium: "400x400#", thumb: "120x120#"}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
