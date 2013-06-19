class MailerController < ApplicationController

  def feedback
    if request.xhr?
      AdminUser.all.each do |user|
        PageMailer.feedback(user.email, params[:'feedback-email'], params[:'feedback-message']).deliver
        render json: {}, status: :ok
      end
    end
  end

end
