begin
  if Rails.env.production?
    ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => 'app6891846@heroku.com',
    :password       =>  Configuration[:sendgrid],
    :domain         => 'heroku.com'
    }
    ActionMailer::Base.delivery_method = :smtp
  end
rescue
  nil
end
