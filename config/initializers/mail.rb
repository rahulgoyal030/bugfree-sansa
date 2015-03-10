ActionMailer::Base.smtp_settings= {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :user_name            => ENV['gmail_user_name'],
    :password             => ENV['gmail_user_password'],
    :authentication       => "plain",
#    :NF_SENDGRID_DOMAIN   => "ninefold.com",
#    :enable_starttls_auto => true
  }
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset: "utf-8"
