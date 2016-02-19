require "net/http"
require "net/smtp"

# Example:
#   begin
#     some http call
#   rescue *HTTP_ERRORS => error
#     notify_hoptoad error
#   end

HTTP_ERRORS = [
  EOFError,
  Errno::ECONNRESET,
  Errno::EINVAL,
  Net::HTTPBadResponse,
  Net::HTTPHeaderSyntaxError,
  Net::ProtocolError,
  Timeout::Error,
]

SMTP_SERVER_ERRORS = [
  IOError,
  Net::SMTPAuthenticationError,
  Net::SMTPServerBusy,
  Net::SMTPUnknownError,
  Timeout::Error,
]

SMTP_CLIENT_ERRORS = [
  Net::SMTPFatalError,
  Net::SMTPSyntaxError,
]

# SMTP_ERRORS = SMTP_SERVER_ERRORS + SMTP_CLIENT_ERRORS

SMTP_ERRORS = SMTP_SERVER_ERRORS.concat(SMTP_CLIENT_ERRORS)

SMTP_CLIENT_ERROR_FLASH = 'The email address supplied is invalid. Please
  check for spelling mistakes.'
SMTP_SERVER_ERROR_FLASH = 'We encountered an internal issue while attempting
  to deliver this email. Please try again in a few minutes.'
