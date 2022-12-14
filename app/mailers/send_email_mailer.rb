class SendEmailMailer < ApplicationMailer
  default from: 'hello@fly.io'
  def say_hello(email)
    mail(
      to: email,
      subject: 'Fly.io',
      template_name: 'hello'
    )
  end
end
