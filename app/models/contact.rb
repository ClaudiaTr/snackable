class Contact < MailForm::Base
# class Contact < ActiveRecord::Base

  # include MailForm::Delivery

  # append :remote_ip, :user_agent, :session
  attribute :name, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  # attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, validate: true
  # attribute :created_at
  attribute :nickname,  captcha: true

  def headers
    {
      subject: "Contact Form sent",
      to: "claudiatroeger2410@yahoo.de",
      from: %("#{name}" <#{email}>)
    }
  end
end
