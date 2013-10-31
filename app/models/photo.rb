# == Schema Information
#
# Table name: photos
#
#  id                 :integer         not null, primary key
#  photo_kind         :string(255)
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  created_at         :datetime
#  updated_at         :datetime
#

class Photo < ActiveRecord::Base
  extend EnumerateIt

  validates_presence_of :photo

  validates_inclusion_of :photo_kind, in: PhotoKind.list

  has_attached_file :photo, styles: { carousel: '800x', thumb: '100x' }

  has_enumeration_for :photo_kind, create_helpers: true, create_scopes: true

  def to_s
    id.to_s
  end
end
