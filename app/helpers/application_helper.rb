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
end
