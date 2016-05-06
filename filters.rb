# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require 'pry'

def experienced?(candidate)
	unless candidate.has_key?(:years_of_experience)
		raise ArgumentError, 'candidate must have a :years_of_experience key'
	end
	candidate[:years_of_experience] >= 2
end

def find(id)
	raise '@candidates must be an Array' if @candidates.nil?
	@candidates.each do |candidate|
		return candidate if candidate[:id] == id	
	end
end

def github_points?(candidate)
	candidate[:github_points] >= 100
end

def has_languages?(candidate)
	candidate[:languages].include? "Ruby" || "Python"
end

def valid_age?(candidate)
	candidate[:age] >= 18
end

def valid_date?(candidate)
	candidate[:date_applied] >= 15.days.ago.to_date
end

def qualified_candidates(candidates)
	qualified = candidates.select do |candidate|
		github_points?(candidate) &&
		has_languages?(candidate) &&
		valid_age?(candidate) &&
		valid_date?(candidate)
	end
	qualified
end

def ordered_by_qualifications(candidates)
		@candidates.sort_by {|candidate| [candidate[:years_of_experience], candidate[:github_points]]}.reverse
end


