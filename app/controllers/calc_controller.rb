class CalcController < ApplicationController

    def square
    
        render({ :template => "calc_templates/square"})
    end

    def square_results
      @the_num = params.fetch("users_number").to_f
      @the_result = @the_num ** 2
      render({ :template => "calc_templates/results_square" })
    end
  
    def square_root
      render({ :template => "calc_templates/square_root"})
    end

    def square_root_results
      @the_num = params.fetch("users_number").to_f

      @the_result = @the_num ** 0.5

      render ({ :template => "calc_templates/results_square_root"})
    end

    def random
      render({ :template => "calc_templates/random"})
    end

    def random_results
      render({ :template => "calc_templates/results_random"})
    end

    def payment
      render({ :template => "calc_templates/payment"})
    end

    def payment_results
      render({ :template => "calc_templates/results_payment"})
    end
    
  end
