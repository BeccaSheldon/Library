# 1. Users should be able to add books to library.
# Make Library and Book classes.
class Library 
	def initialize(books)
		@books = [] # I think I'm setting up an array for all the books to live in (be stored in). But I think there's something missing...
		@books << Book # This means a Book object will be added to books parameter. *plural vs singular, which one is the class, which is parameter, which is instance variable?*
	end
end

class Book
	def initialize
	end
end


# 2. Books should be able to have information saved about them (author, title, description).
class Library 
	def initialize(books)
		@books = []
		@books << Book
	end
end

# Add 'title, author, description' parameters to Book class initialize method.
class Book
	def initialize(title, author, description)
		@title = title
		@author = author
		@description = description
	end
end


# 3. User should be able to check out books from the library, in one week intervals.
# Add User class and 'check_out' method to Library class? Set parameters to 'one_week'???
class Library 
	@@users = {} # Setting hash and class variable to call on user for more complicated actions and data (key, value) retrieval later. 

	def initialize(books)
		@books = [] 
		@books << Book 
	end

	def add_user(username, password) 
		@username = username
		@password = password
		@@users[username] = password
	end

	# PROBLEM AREA
	def check_out(username, title, time) 
		@username = @@user + @title
		@time = one_week # How do I set a one week time limit??
		# What's my logic here? 
		# I want to check out a book. My username is x, my book title is y. 
		# How do I track Book y to User x? 
		puts "#{@username} you have successfully checked out #{@title}. Enjoy for #{@time} and then please return."
	end
end

class Book
	def initialize(title, author, description)
		@title = title
		@author = author
		@description = description
	end
end


# 4. A user should not be able to check out more than two books at a time.
# 5. Checked out books should be associated with a user.
# 6. Users w/ overdue books shouldn't be able to request any new bookss until they return the overdue books.
# 7. Users should be able to check in books to the library when they're finished with them


#8. Users should be able to check a book's status 
# => (available, checked out, overdue or lost).
 class Library 
	@@users = {} # Setting hash and class variable to call on user for more complicated actions and data (key, value) retrieval later. 

	def initialize(books)
		@books = [] 
		@books << Book 
	end

	def add_user(username, password) 
		@username = username
		@password = password
		@@users[username] = password
	end

	# PROBLEM AREA #1:
	def check_out(username, title, time) 
		@username = @@user + @title
		@time = one_week # How do I set a one week time limit??
		# What's my logic here? 
		# I want to check out a book. My username is x, my book title is y. 
		# How do I track Book y to User x? 
		puts "#{@username} you have successfully checked out #{@title}. Enjoy for #{@time} and then please return."
	end

	# PROBLEM AREA #2: How do I make this work? Add action to book titiles?
	def book_status(available, out, overdue, lost) 
	@available = available
	@out = out
	@overdue = overdue
	@lost = lost
	end
end

class Book
	def initialize(title, author, description)
		@title = title
		@author = author
		@description = description
	end
end


# 9. Users should be able to see who has checked out what and when it's due back.
 class Library 
	@@users = {} # Setting hash and class variable to call on user for more complicated actions and data (key, value) retrieval later. 

	def initialize(books)
		@books = [] 
		@books << Book 
	end

	def add_user(username, password) 
		@username = username
		@password = password
		@@users[username] = password
	end

	# PROBLEM AREA #1:
	def check_out(username, title, time) 
		@username = @@user + @title
		@time = one_week # How do I set a one week time limit??
		# What's my logic here? 
		# I want to check out a book. My username is x, my book title is y. 
		# How do I track Book y to User x? 
		puts "#{@username} you have successfully checked out #{@title}. Enjoy for #{@time} and then please return."
	end

	# PROBLEM AREA #2: How do I make this work? Add action to book titiles?
	def book_status(available, out, overdue, lost) 
	@available = available
	@out = out
	@overdue = overdue
	@lost = lost
	end

	# PROBLEM AREA #3: Use class method? Storing user data incorrectly above? 
	# Missing logic. Need info from the hash which 
	# should be storing the user as a key and the checked out book as the value...? 
	# Need to define due_date method with the time issue from problem #1.
	def Library.get_users(username, title, book_status)
		@@users = username
		@title = title
		@status = book_status # minus "lost"??
		puts "#{@username} has checked out #{@title}. #{@title} is currently due back on #{@book_status}"
	end
end

class Book
	def initialize(title, author, description)
		@title = title
		@author = author
		@description = description
	end
end


#10. Users should be able to see a list of overdue books.


