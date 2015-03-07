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

	validates :body, presence: :true

	def send_notification!
		users = forum_thread.users.uniq - [user]
		users.each do |user|
			Mailer.send_notifications(user, self).deliver_later
		end
	end

end
