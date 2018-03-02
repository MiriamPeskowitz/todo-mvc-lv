class Item < ActiveRecord::Base
	belongs_to :list
	validates :description, :presence => true

	STATUS = {
		:incomplete => 0,
		:complete => 1
	}

	def complete?
		self.status == STATUS[:complete]
	end 

	def incomplete? 
		self.status == STATUS[:incomplete]
	end 
end

# step 1, then refactored: 


# 	def complete?
# 		self.status == 1
# 	end 

# 	def incomplete? 
# 		self.status == 0
# 	end 