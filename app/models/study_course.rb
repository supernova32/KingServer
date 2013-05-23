class StudyCourse < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name
  has_many :users, dependent: :destroy

  def series_for_graph(room)
    result = "{ name: '#{self.name}', data: ["
    num = 0
    room.users.each do |u|
      if u.study_course == self
        num += 1
      end
    end
    result += "#{num}]}"
  end

  def self.print_graph(room)
    StudyCourse.all.each.collect { |s| s.series_for_graph(room) }.join ', '
  end

  def self.print_all
    StudyCourse.all.collect { |s| "'#{s.name}'" }.join ', '
  end
end
