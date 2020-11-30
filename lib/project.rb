class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    backers = []
    ProjectBacker.all.each do | backer |
      if backer.project == self 
        backers << backer.backer 
      end
    end
    backers 
  end

end