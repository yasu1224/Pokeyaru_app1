class ContactMailer < ApplicationMailer
  
  def send_mail(contact)
    @contact = contact
    mail(
      from: 'system@example.com',
      to:   ENV['MAILER_USER_ID'],
      subject: 'お問い合わせ通知'
    )
  end

end
