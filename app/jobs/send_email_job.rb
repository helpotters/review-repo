# frozen_string_literal: true

class SendEmailJob < ApplicationJob
  def perform
    email = 'test@example.com'
    SendEmailMailer.say_hello(email).deliver_now!
  end
end
