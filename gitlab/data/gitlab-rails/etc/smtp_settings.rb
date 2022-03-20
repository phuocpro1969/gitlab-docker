# This file is managed by gitlab-ctl. Manual changes will be
# erased! To change the contents below, edit /etc/gitlab/gitlab.rb
# and run `sudo gitlab-ctl reconfigure`.

if Rails.env.production?
  secrets = Gitlab::Email::SmtpConfig.secrets
  smtp_settings = {
    authentication: :login,
    user_name: "phuocpro1969@gmail.com",
    password: "03096969",
    address: "smtp.gmail.com",
    port: 587,
    domain: "smtp.gmail.com",
    enable_starttls_auto: true,
    tls: false,
    
    openssl_verify_mode: "peer",
    
    ca_file: "/opt/gitlab/embedded/ssl/certs/cacert.pem",
  }

  Gitlab::Application.config.action_mailer.delivery_method = :smtp
  ActionMailer::Base.delivery_method = :smtp

  ActionMailer::Base.smtp_settings = smtp_settings
end
