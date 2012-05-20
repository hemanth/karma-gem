#!/usr/bin/evn ruby 
require 'dbm'
require 'fileutils'
 
class Karma
   def self.do(data)
        # This used dbm of ruby, it maintains the karma for user names
        karma_db = File.expand_path('~/.karma.db', File.dirname(__FILE__))
        FileUtils.touch karma_db unless File.exist?(karma_db)  
        kdb = DBM.open(karma_db)
        whom,what = ""
        whom,what = data.split(/(?=\+\+)|(?=\-\-)/)

        if(whom.empty?)
           # If the user does not specify the user name after karma
           puts "Wrong usage! Do karma(name, ++ or --)"
        else 
           if (what.nil? && !kdb[whom].nil?)
               # If what is not specified and user is present
               # Display his current karma
               puts "Karma of #{whom} : #{kdb[whom]}"
               elsif(kdb[whom].nil?)
               # If the user whoes karma is varied is not present add him
               # set his karma to 0 that is the inital state
                  kdb[whom]=0
                  puts "New avatra #{whom}, your karma is 0"
               elsif((what <=> "++") == 0)
                  # If karma need a ++
                  kdb[whom]=kdb[whom].to_i+1
                  puts "Karma of #{whom} is now : #{kdb[whom]}"
               elsif((what <=> "--")== 0)
                  # If karam needs a --
                  kdb[whom]=kdb[whom].to_i-1
                  puts "Karma is of #{whom} is now : #{kdb[whom]}"
           else
              # Wrong usage!
              puts "Wrong usage! Do karma whom ++ or --"
        end
     end
   end
end

