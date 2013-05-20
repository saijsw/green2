class Category < ActiveRecord::Base
  include ActsAsTree
  acts_as_tree order: "name"
end
