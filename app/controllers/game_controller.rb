class GameController < ApplicationController

  def rules
    render({ :template => "templates/rules" })
  end

  def square
    render({ :template => "templates/square" })
  end

  def square_root
    render({ :template => "templates/square_root" })
  end

  def payment
    render({ :template => "templates/payment" })
  end

  def random
    render({ :template => "templates/random" })
  end

  def square_results
    render({ :template => "templates/square_results" })
  end

  def square_root_results
    render({ :template => "templates/square_root_results" })
  end

  def payment_results
    @apr = params.fetch("apr").to_f / 100
    @number_of_years = params.fetch("number_of_years").to_i
    @principal = params.fetch("principal").to_f

    @num_periods = @number_of_years*12

    r = @apr/12

    numerator = r * @principal
    denominator = 1 - (1 + r) ** -@num_periods
    
    @payment = numerator/denominator
    
    render({ :template => "templates/payment_results" })
  end

  def random_results
    render({ :template => "templates/random_results" })
  end

end

