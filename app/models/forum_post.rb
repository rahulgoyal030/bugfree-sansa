# == Schema Information
#
# Table name: forum_posts
#
#  id              :integer          not null, primary key
#  body            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  forum_thread_id :integer
#

class ForumPost < ActiveRecord::Base
	belongs_to :forum_thread
	belongs_to :user
end
