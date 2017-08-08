class Post < ActiveRecord::Base
  belongs_to :author

  def author_name
    if self.author
      author.name
    else
      ""
    end
  end

  def author_name=(name)
    author = Author.find_by(:name => name)
    
    if author
      self.author = author
    else
      self.author = Author.create(:name => name)
    end
  end

end