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

  attr_accessible :photo_kind, :photo

  validates_presence_of :photo_file_name

  validates_inclusion_of :photo_kind, :in => PhotoKind.list

  has_attached_file :photo, :styles => { :thumb => '100x100>' }

  has_enumeration_for :photo_kind, :create_helpers => true, :create_scopes => true
end
