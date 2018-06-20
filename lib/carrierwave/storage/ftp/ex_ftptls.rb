require 'net/ftp'
require 'carrierwave/storage/ftp/ex_ftp_mixin'

class ExFTPTLS < Net::FTP
  include ExFTPMixin

  def self.new(host = nil, options = {})
    options[:ssl] = default_ssl_options unless options[:ssl]
    super(host, options)
  end

  def self.default_ssl_options
    { verify_mode: OpenSSL::SSL::VERIFY_NONE }
  end
end
