# Errors are cool.
module HQTrivia::Errors
  # Raised if a 404 error is returned
  class InvalidUser < ArgumentError; end

  # Raised if a 401 error is returned
  class InvalidKey < ArgumentError; end

  # Raised if a 400 error is returned during Phone Verification
  class InvalidNumber < ArgumentError; end

  # Raised if a 400 error is returned during Code Verification
  class InvalidCode < ArgumentError; end

  # Raised if a 429 error is returned during Code Verification
  class TooQuick < ArgumentError; end
end
