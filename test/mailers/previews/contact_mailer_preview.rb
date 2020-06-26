# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact
    contact = Contact.new(name: "テストさん", email: "test@test", message: "お問い合わせ内容")
    ContactMailer.send_mail(contact)
  end
end
