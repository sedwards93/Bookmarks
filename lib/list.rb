class List
  attr_reader :bookmarks

  def self.create
    @list = List.new
  end

  def self.instance 
    @list 
  end

  def initialize
    @bookmarks = ["Not porn"]
  end

  def list_of_bookmarks
    @bookmarks.join(", ")
  end

end