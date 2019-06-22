# The User StreakInfo Class. A user's streak information.
class HQTrivia::User::StreakInfo
  # @param data [JSON] the data.
  # @!visibility private
  def initialize(data)
    @data = data
  end

  # @return [Integer] the ID of this streak's user.
  def id
    @data['userId']
  end

  # @return [Integer] the target goals (in consecutive days)
  def target
    @data['target']
  end

  # @return [Time] the date this streak started
  def start_date
    Time.parse(@data['startDate'])
  end

  # @return [Integer] the current streak duration
  def current
    @data['current']
  end

  # @return [Integer] the total streak duration
  def total
    @data['total']
  end

  # @return [Time] when this user last played
  def last_played
    Time.parse(@data['lastPlayed'])
  end

  # @return [true, false] if the user should be notified
  def notify?
    @data['notify']
  end
end
