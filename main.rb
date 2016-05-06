# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'
require 'pp'

## Your test code can go here
# experienced?(@candidates[2])
# #should be true
# experienced?(@candidates[1])
# #should be false 

# find(1)

# github_points?(@candidates[0])
# #should be true
# github_points?(@candidates[4])
# should be false

# has_languages?(@candidates[2])
# #should be true
# has_languages?(@candidates[0])
# #should be false

# valid_age?(@candidates[6])
# #should be false
# valid_age?(@candidates[5])
# #should be true

# valid_date?(@candidates[0])
# #should be false
# valid_date?(@candidates[1])
#should be true

# pp qualified_candidates(@candidates)

pp ordered_by_qualifications(@candidates)

