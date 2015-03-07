# == Schema Information
#
# Table name: forum_threads
#
#  id         :integer          not null, primary key
#  subject    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  owner_id   :integer
#

class ForumThread < ActiveRecord::Base

	belongs_to :owner , class_name: "User" ,foreign_key: 'owner_id'
	has_many :forum_posts, dependent: :destroy
	has_many :users, through: :forum_posts

	accepts_nested_attributes_for :forum_posts
	validates_associated :forum_posts
end
