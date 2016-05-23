class Blog < ActiveRecord::Base
  acts_as_taggable
  # If you set the initializer file to not auto_include, 
  # you can manually force an auto include
  # has_many :posts, auto_include: true
  
  # Since goldiloader is set to auto_include be default,
  # this behavior can be overridden.
  # has_many :posts, auto_include: false
end
