require 'sinatra'
require 'sendgrid-ruby'

include SendGrid
get "/"  do 

     
	erb :home
end




get "/cookie"  do 
    class Cookie
		
		def initialize(price, description, url)
			@price = price
			@description = description
			@url = url
		end	
	def get_price
	    return @price	
	end
	def get_des
	    return @description	
	end
	def get_url
	    return @url	
	end

	end

	@c1 = Cookie.new("price:$6", 'Chocolate Chip Cookie', "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/2ChocolateChipCookies.jpg/1200px-2ChocolateChipCookies.jpg" )
    @c2 = Cookie.new("price:$6", 'Chocolate Chip Cookie', "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/2ChocolateChipCookies.jpg/1200px-2ChocolateChipCookies.jpg" )
    @c3 = Cookie.new("price:$6", 'Chocolate Chip Cookie', "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/2ChocolateChipCookies.jpg/1200px-2ChocolateChipCookies.jpg" )
	

	@c4 = Cookie.new("price:$6", 'Chocolate Chip Cookie', "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/2ChocolateChipCookies.jpg/1200px-2ChocolateChipCookies.jpg" )
    @c5 = Cookie.new("price:$6", 'Chocolate Chip Cookie', "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/2ChocolateChipCookies.jpg/1200px-2ChocolateChipCookies.jpg" )
    @c6 = Cookie.new("price:$6", 'Chocolate Chip Cookie', "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/2ChocolateChipCookies.jpg/1200px-2ChocolateChipCookies.jpg" )
    @cookiearray = [@c1,@c2,@c3,@c4,@c5,@c6]
	erb :cookie
end











get "/cake"  do 
     class Cake
		
		def initialize(price, description, url)
			@price = price
			@description = description
			@url = url
		end	
	def get_price
	    return @price	
	end
	def get_des
	    return @description	
	end
	def get_url
	    return @url	
	end

	end

	@cake1 = Cake.new("price:$6", 'Blackforest Cake', "css/images/cake.jpg" )
    @cake2 = Cake.new("price:$6", 'Blackforest Cake', "css/images/cake.jpg" )
    @cake3 = Cake.new("price:$6", 'Blackforest Cake', "css/images/cake.jpg" )
    @cake4 = Cake.new("price:$6", 'Blackforest Cake', "css/images/cake.jpg" )
    @cake5 = Cake.new("price:$6", 'Blackforest Cake', "css/images/cake.jpg" )
    @cake6 = Cake.new("price:$6", 'Blackforest Cake', "css/images/cake.jpg" )
	@cakearray = [@cake1,@cake2,@cake3,@cake4,@cake5,@cake6]  
   





     
	erb :cake
end










get "/muffin"  do 
   class Muffin
		
		def initialize(price, description, url)
			@price = price
			@description = description
			@url = url
		end	
	def get_price
	    return @price	
	end
	def get_des
	    return @description	
	end
	def get_url
	    return @url	
	end

	end

	@muffin1 = Muffin.new("price:$6", 'Choco Lava Cake', "css/images/muffin.jpg" )
    @muffin2 = Muffin.new("price:$6", 'Choco Lava Cake', "css/images/muffin.jpg" )
    @muffin3 = Muffin.new("price:$6", 'Choco Lava Cake', "css/images/muffin.jpg" )
    @muffin4 = Muffin.new("price:$6", 'Choco Lava Cake', "css/images/muffin.jpg" )
    @muffin5 = Muffin.new("price:$6", 'Choco Lava Cake', "css/images/muffin.jpg" )
    @muffin6 = Muffin.new("price:$6", 'Choco Lava Cake', "css/images/muffin.jpg" )
	@muffinarray = [@muffin1,@muffin2,@muffin3,@muffin4,@muffin5,@muffin6]  
   


     
	erb :muffin
end

get "/contact" do
	erb :contact
end

# post "/mail" do
# 	from = Email.new(email: params[:inputEmail])
# 	to = Email.new(email: 'tanjimotin21@gmail.com')
# 	subject = params[:inputSubject]
# 	content = Content.new(type: 'text/plain', value: params[:inputText])
# 	mail = Mail.new(from, subject, to, content)

# sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
# response = sg.client.mail._('send').post(request_body: mail.to_json)
# puts response.status_code
# puts response.body
# puts response.headers

# 	redirect "/thank"
# end

get '/thank' do
	erb :thank
end