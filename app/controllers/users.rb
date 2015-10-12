# get '/signup' do

# 	erb :'users/new'
# end

# post '/signup' do
# 	# Do something processing with user input
# 	redirect to '/user/dashboard'
# end

# get '/user/dashboard' do
# 	erb :dashboard

# this method works
class UsersController
	def index #to display all users
		@users = User.all
	end

	def new#to return new user form
		get '/users/new' do
			erb :"static/signup"
		end
	end

	def create#to create new user
		post '/users' do
			erb :"static/signup"
				redirect to '/users/new'
		end
	end

	def show#to show one user
		get '/users/:id' do
			self.show
				User.find(:id)
			end
		end
	end

	def edit#to return edit user form
		get '/users/:id/edit' do
			self.edit
				User.find(:id).edit
			end
		end
	end

	def update#to update one user
		put '/users/:id' do
			self.update
				User.find(:id).update
			end
		end
	end
			
	def destroy#to destroy one user
		delete '/users/:id' do
			self.destroy
				Users.find(:id).destroy
			end
		end
	end

get '/users/new' do
	erb :"static/signup"
end

post '/users/new' do
	erb :"static/signup"
	redirect to '/users/new'
end	

get '/questions' do
	erb :"homepage"
end