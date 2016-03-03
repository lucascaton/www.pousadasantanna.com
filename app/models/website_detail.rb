class WebsiteDetail < ActiveRecord::Base
  validates :headline1, :headline2, :intro, :photo1, :photo2, :photo3, :photo4, presence: true

  has_attached_file :photo1, styles: { carousel: '800x', thumb: '100x' }
  has_attached_file :photo2, styles: { carousel: '800x', thumb: '100x' }
  has_attached_file :photo3, styles: { carousel: '800x', thumb: '100x' }
  has_attached_file :photo4, styles: { carousel: '800x', thumb: '100x' }
end
