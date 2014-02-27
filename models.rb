class User < ActiveRecord::Base
	has_many :blog
	has_one :profile
end

class Profile <ActiveRecord::Base
	belongs_to :user
end

class Blog <ActiveRecord::Base
	belongs_to :user
end