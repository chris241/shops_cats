class UserMailer < ApplicationMailer
	default from: 'no-reply@monsite.fr'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://www.mailjet.com' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: current_user.email, subject: 'Bienvenue chez nous !') 
  end

  def order_email(user)
      @user = user
      orders = Order.where(user_id: @user)
      @items = []
      orders.each do |ord|
      	join = JoinOrderItem.find_by(order_id: ord.id)
      	@items.push(Item.find(join.item_id))
      end
      mail(to: @user , subject: 'Commande')
    end

    def admin_report_email(user)
      @user = user
      mail(to: "" , subject: 'Une commande a été faite')
end

end
