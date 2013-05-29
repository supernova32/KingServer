class ClaimsWorker
  include Sidekiq::Worker
  sidekiq_options retry: true
  sidekiq_options failures: true

  def perform(room_id, user_id)
    room = Room.find(room_id)
    user = User.find(user_id)
    ck = room.users.size
    nu = user.study_course.users.size
    num = room.users.where(study_course_id: user.study_course_id)
    if num.size.to_f/ck.to_f > 0.65 and nu.to_f/3 < num.to_f
      p 'would have saved'
      room.claimed = true
      room.claimed_by = user.studies
      room.save!
      # send push notification to users after this
    end
  end
end