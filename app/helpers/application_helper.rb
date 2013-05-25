module ApplicationHelper
  def parse_rooms(rooms)
    result = ''
    rooms.each do |r|
      num = 0
      r.users.each do |u|
        num += 1
      end
      result += "#{num}, "
    end
    result.chomp!(', ')
  end

  def print_user_rooms(rooms)
    rooms.ordered.collect{|r| r.human}.join ', '
  end
end
