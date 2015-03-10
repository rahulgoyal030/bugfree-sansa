class Mailer < ActionMailer::Base
  default from: "killdevdark@gmail.com"

  def send_notifications(user, forum_post)
    @user = user
    @forum_post = forum_post

    mail(
    to: "#{user.email}",
    subject: "[CollegeDevs] New Post in #{forum_post.forum_thread.subject}"
    )
  end

  def confirmation_instructions(user)
    @user = user
    mail(to: @user.email, subject: 'Account confirmation_instructions')
  end

  def reset_password_instructions(user)
    @user = user
    mail(to: @user.email, subject: 'reset_password_instructions')
  end

  def unlock_instructions(user)
    @user = user
    mail(to: @user.email, subject: 'unlock_instructions')
  end

end
