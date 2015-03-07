class ForumThreads::ForumPostsController < ApplicationController
  before_action :set_forum_thread, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /forum_posts
  # GET /forum_posts.json


  def create
    @forum_thread = ForumThread.find(params[:forum_thread_id])
    @forum_post = @forum_thread.forum_posts.new set_post_params
    @forum_post.user = current_user
    if @forum_post.save
      @forum_post.send_notification!
      redirect_to forum_thread_path(@forum_thread,anchor: "forum_post_#{@forum_post.id}"), notice: "Created the Post"
    end
  end

  def update

  end

  def destroy

  end

  private
    def set_post_params
      params.require(:forum_post).permit(:body)
    end
end
