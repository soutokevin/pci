class EmailMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email_mailer.contact.subject
  #
  def contact(email_params)
    @name = email_params[:name]
    @email = email_params[:email]
    @phone = email_params[:phone]
    @description = email_params[:description]
    @reason = email_params[:reason]

    mail to: "danilocabrinha@cjr.org.br", subject: "Novo Contato do Site"
  end
end
