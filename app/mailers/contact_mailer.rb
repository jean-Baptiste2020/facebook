class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact.subject
  #
  def contact (post)
    @post = post
    mail to: "chablamedia@gmail.com", subject: "Email de confirmation de la demande"
  end
end
