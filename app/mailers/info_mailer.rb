class InfoMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.info_mailer.form_contact.subject
  #
  def form_contact(contacto)
    @correo = Contact.find(contacto.id)
    @greeting = "Quieren contactarse contigo  #{contacto.email}"
    #      a quien va el correo y  subjet es quien manda el correo
    mail( to: "xinayespinoza@gmail.com", subject: @greeting)
  end
end
