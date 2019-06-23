# The Schedule Show Class. This is a show on the schedule
class HQTrivia::Schedule::Show
  # @param data [JSON] the data.
  # @!visibility private
  def initialize(data)
    @data = data
  end

  # This returns the show type.
  # "hq" is general trivia.
  # "hq-sports" is sports
  # "hq-words" is words.
  # @see [words?]
  # @see [general?]
  # @see [sports?]
  # @see [trivia?]
  # @return [String] the show type
  def show_type
    @data['showType']
  end

  # @return [Integer] the ID of this show
  def id
    @data['showId']
  end

  # This returns the game type.
  # "trivia" is trivia (general/sports).
  # "words" is words.
  # @return [String] the type of this game
  def game_type
    @data['gameType']
  end

  # The "vertical" is a more specific game type.
  # "general" is normal trivia game
  # "sports" is a sports trivia game
  # "words" is a words game.
  # @return [String] the vertical of this game.
  def vertical
    @show['vertical']
  end

  # The opt is found in preferences.
  # @see [Me#preferences]
  # @return [String] the opt.
  def opt
    @show['vertical']
  end

  # @return [Time] the start time of this game
  def start_time
    Time.parse(@data['startTime'])
  end

  # The title displayed in the app.
  # @return [String] the title.
  def title
    @data['display']['title']
  end

  # The summary displayed in the app.
  # @return [String] the show summary.
  def summary
    @data['display']['summary']
  end

  # The accent color displayed in the app.
  # @return [String] the accent color.
  def accent_color
    @data['display']['accentColor']
  end

  # The description displayed in the app.
  # @return [String] the description.
  def description
    @data['display']['description']
  end

  # The image displayed in the app.
  # @return [String] the image.
  def image
    @data['display']['image']
  end

  # The logo displayed in the app.
  # @return [String] the logo.
  def logo
    @data['display']['logo']
  end

  # The background image displayed in the app.
  # @return [String] the background image.
  def background_image
    @data['display']['bgImage']
  end

  # The background video displayed in the app.
  # @return [String] the background video.
  def background_video
    @data['display']['bgVideo']
  end

  # @return [String] the prize in cents.
  def prize_cents
    @data['prizeCents']
  end

  # @return [String] the prize.
  def prize
    "$#{(@data['prizeCents'] / 100).to_s.gsub(/(\d)(?=\d{3}+(\.\d*)?$)/, '\1' + ",")}"
  end

  # @return [String] the currency the prize will be in
  def currency
    @data['currency']
  end

  # @return [String] the season this game will count towards
  def season_name
    @data['seasonName']
  end
end
