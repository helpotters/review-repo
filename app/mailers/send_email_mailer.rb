class SendEmailMailer < ApplicationMailer
  default from: 'hello@fly.io'
  def say_hello
    mail(
      to: 'grevious@empire.gov',
      from: 'obikenobi02@hotmail.com',
      subject: 'uh oh',
      template_name: 'hello'
    )
  end

  def general_kenobi
    mail(
      to: 'obikenobi02@hotmail.com',
      from: 'grevious@empire.gov',
      subject: 'another for my collection',
      template_name: 'general_kenobi'
    )
  end
end
