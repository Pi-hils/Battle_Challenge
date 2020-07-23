 #require 'rack'

# class HelloRack
#     def call(env)
#         [200, {"Content-Type" => "text/html"}, ["This is BATTLE!"]]
#     end
# end


require File.expand_path('./app.rb', File.dirname(__FILE__))
run Battle

# run HelloRack.new