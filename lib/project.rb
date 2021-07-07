class Project
    attr_reader :title
    def initialize title
        @title = title        
    end

    def add_backer backer 
        ProjectBacker.new self, backer 
    end

    def backers
        ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end.map do |project_backer|
            project_backer.backer
        end
    end
end