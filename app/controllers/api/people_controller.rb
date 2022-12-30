module Api
  class PeopleController < ActionController::Base

    def index
      @people = Person.adults
    end

    def factorial
      f = params[:number]
      @factorial = []
      calc_factorial(f)
      render json: @factorial
    end

    def split_array
      array = params[:array]
      num = params[:num]
      res = array.length / num      
      @result = []
      
      get_arrays(array, num, res)

      render json: @result
    end

    private

    def calc_factorial(f)
      ff = f
      n = f - 1
      while n > 0 do
        ff = ff + n
        n -= 1
      end
      @factorial << { "#{f}": ff}
      f -= 1
      calc_factorial(f) unless f == 0
    end

    def get_arrays(array, num, res)
      i = []
      while i.length < res do
        i << array[0] 
        array.shift
      end
      @result << i
      get_arrays(array, num, res) if @result.length < res
    end
  end
end
