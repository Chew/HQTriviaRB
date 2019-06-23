# The user themselves
class HQTrivia::Schedule
  # Get that user info!
  # @param key [String] the key of the user
  def initialize(key)
    @key = key
    @data = JSON.parse(RestClient.get('https://api-quiz.hype.space/shows/schedule', Authorization: key, 'x-hq-client': 'iOS/1.4.15 b146'))
  end

  # @return [Array<Show>] all upcoming shows
  def shows
    shows = []
    @data['shows'].each { |show| shows.push(Show.new(show)) }
    shows
  end

  # @return [Show] the next game
  def next
    Show.new(@data['shows'][0])
  end

  # @return [Array<Announcement>] all announcements (shown in the schedule tab)
  def announcements
    announcements = []
    @data['tentpoles'].each { |announcement| announcements.push(Announcement.new(announcement)) }
    announcements
  end
end
