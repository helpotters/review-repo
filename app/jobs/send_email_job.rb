# frozen_string_literal: true

class SendEmailJob < ApplicationJob
  def perform
    SendEmailMailer.say_hello.deliver_now!
    SendEmailMailer.general_kenobi.deliver_now!
  end
end
