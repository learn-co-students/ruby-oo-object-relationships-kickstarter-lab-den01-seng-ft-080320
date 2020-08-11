class Backer
attr_reader :name 
@@all = []

    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project project
        ProjectBacker.new(project, self)
    end

    def backers
        ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end 
    end

    def backed_projects
        backers.map do |backer|
            backer.project
        end
    end
end 