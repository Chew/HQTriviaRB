# The User Leaderboard Class. A user's stats.
class HQTrivia::User::Leaderboard
  # @param data [JSON] the data.
  # @!visibility private
  def initialize(data)
    @data = data
  end

  # @return [String] the total earnings
  def total
    @data['total']
  end

  # @return [Integer] the total earnings, in cents.
  def total_cents
    @data['totalCents']
  end

  # @return [String] the amount of unclaimed money!
  def unclaimed
    @data['unclaimed']
  end

  # @return [Integer] the amount of wins on this week's leaderboard
  def wins
    @data['wins']
  end

  # @return [Integer, nil] the rank of this user this week, nil if no rank
  def rank
    return nil if @data['rank'] == 101 && @data['wins'] == 0

    @data['rank']
  end

  # This is only based on HQ Trivia I believe, and sometimes isn't even accurate!
  # @return [String] the all time total.
  def alltime_total
    @data['alltime']['total']
  end

  # This is only based on HQ Trivia I believe, and sometimes isn't even accurate!
  # @return [String] the all time win count.
  def alltime_wins
    @data['alltime']['wins']
  end

  # This is only based on HQ Trivia I believe. Most likely accurate based on the information.
  # @return [String] the all time ranking.
  def alltime_rank
    @data['alltime']['rank']
  end

  # This is only based on HQ Trivia I believe, and sometimes isn't even accurate!
  # @return [String] the weekly total.
  def weekly_total
    @data['weekly']['total']
  end

  # This is only based on HQ Trivia I believe, and sometimes isn't even accurate!
  # @return [String] the weekly win count.
  def weekly_wins
    @data['weekly']['wins']
  end

  # This is only based on HQ Trivia I believe. Most likely accurate based on the information.
  # @return [String] the weekly ranking.
  def weekly_rank
    @data['weekly']['rank']
  end
end
