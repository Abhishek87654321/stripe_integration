class ChargesController < ApplicationController
  def new
  end

  def create
    @amount = $5
    # begin
     
      customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: params[:stripeToken]
      )
      debugger
      charge = Stripe::Charge.create(customer: customer.id,amount: 5,description: 'Rails Stripe customer',currency: 'usd')

    # rescue Stripe::CardError => e
    #   flash[:error] = e.message
    #   redirect_to new_charge_path
    # end
  end
end
