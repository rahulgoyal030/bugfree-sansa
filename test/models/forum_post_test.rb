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

require 'test_helper'

class ForumPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
