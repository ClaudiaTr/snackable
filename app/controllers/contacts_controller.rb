class ContactsController < ApplicationController
  # def contact
  #   @contact_form = ContactForm.new(params[:contact_form])
  #   @contact_form.request = request
  # end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    # @contact.request = request
    # if @contact.deliver
    #   flash.now[:success] = 'Message sent!'
    # else
      flash.now[:error] = 'Could not send message'
      # render :new
    # end
    redirect_to thankyou_email_path
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
