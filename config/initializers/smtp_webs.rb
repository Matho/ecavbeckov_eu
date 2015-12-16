ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:enable_starttls_auto => false,

:address => "" ,
    :port=>25,
    :authentication => :plain ,
    :domain => "" ,
    :user_name => "" ,
    :password => ""
}