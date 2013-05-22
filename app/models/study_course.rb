class StudyCourse < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name
  has_many :users, dependent: :destroy

  def series_for_graph
    result = "{ name: '#{self.name}', data: ["
    Room.all.each do |r|
      num = 0
      r.users.each do |u|
        if u.study_course == self
          num += 1
        end
      end
      result += "#{num}, "
    end
    result.chomp!(', ')
    result += ']}'
  end

  def self.print_all
    StudyCourse.all.each.collect { |s| s.series_for_graph }.join ', '
  end
end
