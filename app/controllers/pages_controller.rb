class PagesController < ApplicationController
  def home
    @contact = Contact.new
    @articles = Article.all
  end

  # def create
  #   @contact = Contact.new(contact_params)
  #   # @contact.request = request
  #   # if @contact.deliver
  #   #   flash.now[:success] = 'Message sent!'
  #   # else
  #     flash.now[:error] = 'Could not send message'
  #     render :new
  #   # end
  # end

  # private
  # def contact_params
  #   params.require(:contact).permit(:name, :email, :message)
  # end

  def thanksemail

  end

  def thanksorder

  end
end
