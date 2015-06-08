# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create([{product_name: 'syrup'}, {product_name: 'juno'}, {product_name: 'jarvis'}])

Ingredient.create(
	[{name: 'Standup', description: 'Put a daily standup routine in place', 
	track: 'Culture', step: 'Team', method: 'concept / team effort'},
	
	{name: 'Team Communication', description: 'establish communication channels (email, slack etc)', 
	track: 'Culture', step: 'Team', method: 'concept / team effort'},
	
	{name: 'Expectations', description: 'Talk about what the team should expect throughout the 30 days', 
	track: 'Culture', step: 'Team', method: 'team effort'},
	
	{name: 'Tools', description: 'overview of process + main tools', 
	track: 'Culture', step: 'Team', method: 'team effort'},
	
	{name: 'Try releated technologies', description: 'use / try technologies similar to the one we are building or that are components of our product', 
	track: 'Culture', step: 'Ideation', method: 'individual activity'},
	
	{name: 'Retrospectives', description: 'Put a daily retro routine in place', 
	track: 'Culture', step: 'Team', method: 'concept/meetings'},
	
	{name: 'Huddle culture', description: 'With less than 3 people, do huddles (quick, ad-hoc chats) rather than meetings', 
	track: 'Culture', step: 'Team', method: 'concept/meetings'},
	
	{name: 'Timeboxed culture', description: 'Build the habit of timeboxing activities and observing the timeboxes', 
	track: 'Culture', step: 'Team', method: 'team effort'},
	
	{name: 'Problem', description: 'Team investment one-off exercise', 
	track: 'Business', step: 'Ideation', method: 'team effort'},
	
	{name: 'BMC', description: 'Use the Business Model Canvas / Lean BMC as the framework for planning', 
	track: 'Business', step: 'Ideation', method: 'concept / whiteboarding'},
	
	{name: 'Purpose', description: 'Purpose statement on top of BMC, why should this business/product exist', 
	track: 'Business', step: 'Ideation', method: 'whiteboarding'},
	
	{name: 'Competitive analysis', description: 'research alternative products and companies', 
	track: 'Business', step: 'Ideation', method: 'individual activiity / collaboration'},
	
	{name: 'Competitive feature matrix', description: 'industry players x features x key messages', 
	track: 'Product', step: 'Ideation', method: 'individual activiity / collaboration'},
	
	{name: 'Empathy Map', description: ' ', 
	track: 'Product', step: 'Ideation', method: 'workshop'},
	
	{name: 'Value Prop Canvas / Customer Jobs', description: ' ', 
	track: 'Product', step: 'Ideation', method: 'workshop'},

	{name: 'Persona', description: ' ', 
	track: 'Product', step: 'Ideation', method: ' '},

	{name: 'Assumptions list', description: ' ', 
	track: 'Product', step: 'Test', method: ' '},

	{name: 'User journeys', description: 'Defining the experience', 
	track: 'Product', step: 'Design', method: ' '},

	{name: 'Financial model', description: 'strategic events + financial timeline', 
	track: 'Business', step: 'Plan', method: 'individual activity'},

	{name: 'Wireframes', description: 'Create first engineer ready wireframes', 
	track: 'Product', step: 'Design', method: 'iindividual activiity / collaboration'},

	{name: 'Backlog', description: 'Build your icebox of features, move first features to backlog', 
	track: 'Product', step: 'Design', method: 'individual activity'},

	{name: 'Presentation', description: 'create a base presentation of the product', 
	track: 'Business', step: 'Design', method: ' '},

	{name: 'Feature list', description: 'minimal features that bring value', 
	track: 'Product', step: 'Test', method: ' '},

	{name: 'Story built', description: 'user story started, tested and accepted by pm', 
	track: 'Product', step: 'Develop', method: ' '},

	{name: 'Product open to public', description: 'INVEST stories', 
	track: 'Product', step: 'Develop', method: ' '},

	{name: 'Validated value assumptions', description: 'feedback loop and iterations on the value assumptions', 
	track: 'Business', step: 'Test', method: ' '},

	{name: 'Validated growth assumptions', description: 'feedback loop and iterations on the value assumptions', 
	track: 'Business', step: 'Test', method: ' '},

	{name: 'Exit strategy', description: 'align the companys structure for the right exit', 
	track: 'Business', step: 'Plan', method: 'concept'}]
	)

