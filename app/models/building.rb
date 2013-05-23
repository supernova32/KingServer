class Building < ActiveRecord::Base
  include ApplicationHelper
  attr_accessible :latitude, :longitude, :name
  has_many :rooms

  def data_for_graph
    result = "{ y: #{self.checked_users}, color: colors[#{self.id - 1}], drilldown: { name: '#{self.name}',
                categories: [#{self.rooms.collect{|r| r.human}.join ', '}], data: [#{parse_rooms(self.rooms)}],
                color: colors[#{self.id - 1}]} }"
  end

  def self.print_all
    Building.all.collect{|b| "'#{b.name}'"}.join ', '
  end

  def self.print_data
    Building.all.collect{|b| b.data_for_graph}.join ', '
  end
end
