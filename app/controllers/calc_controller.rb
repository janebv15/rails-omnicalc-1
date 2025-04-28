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
        apr     = params.fetch("apr").to_f
        years   = params.fetch("years").to_i
        principal = params.fetch("principal").to_f
      
        # do the math…
        monthly_rate   = apr / 100.0 / 12.0
        total_payments = years * 12
        numerator      = monthly_rate * (1 + monthly_rate)**total_payments
        denominator    = (1 + monthly_rate)**total_payments - 1
        payment        = principal * numerator / denominator
      
        @apr        = apr.round(4).to_s
        @years      = years
        @principal  = principal.to_fs(:currency)
        @the_result = payment.to_fs(:currency)
      
        render({ :template => "calc_templates/results_payment"})
      end

  end
