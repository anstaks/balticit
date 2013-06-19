class PageMailer < ActionMailer::Base

  def feedback(email,sender,message)
    @sender = sender
    @message = message
    mail(to: email, subject: 'You have new feedback message', from: sender) do |format|
      format.html { render text:message }
    end
  end

end
