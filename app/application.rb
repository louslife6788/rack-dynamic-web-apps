class Application

  @@NUM = 0



    def call(env)


      resp = Rack::Response.new
  
      num_1 = Kernel.rand(1..20)
      num_2 = Kernel.rand(1..20)
      num_3 = Kernel.rand(1..20)
  
      if num_1==num_2 && num_2==num_3
        resp.write "You Win "
      else
        resp.write "You Lose \n"
        resp.write "numbers = #{num_1}_ #{num_2}_#{num_3}\n  "
        resp.write "#{@@NUM /2}"
        
      end
      @@NUM +=1
      resp.finish
    end
  
end