class OmicalcController < ApplicationController
  def home
    render({:template => "templates/home"})
  end 

  def square_new
    render({:template => "templates/square_new"})
  end

  def square_results
    @num = params["number"]
    @square = @num.to_f * @num.to_f
    render({:template => "templates/square_results"})
  end

  def square_root_new
    render({:template => "templates/square_root_new"})
  end

  def square_root_results
    @num = params["user_number"]
    @square_root = @num.to_f**0.5
    render({:template => "templates/square_root_results"})
  end

  def payment_new
    render({:template => "templates/payment_new"})
  end

  def payment_results
    @apr = (params['user_apr'].to_f)
    @years = params['user_years'].to_i
    @pv = params['user_pv'].to_f
    periods = @years * 12
    percentage_per_period = (@apr/12)/100
    numeratr = percentage_per_period * @pv
    denominatr = 1 - ((1+percentage_per_period.to_f)**(-periods.to_f))
    @payment = numeratr.to_f/denominatr.to_f
    render({:template => "templates/payment_results"})
  end

  def random_new
    render({:template => "templates/random_new"})
  end

  def random_results
    @mini = params['user_min'].to_f
    @maxi = params['user_max'].to_f
    @rand = rand(@mini..@maxi)
    render({:template => "templates/random_results"})
  end

end

  

    
