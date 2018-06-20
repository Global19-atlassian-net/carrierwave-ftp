require 'net/ftp'
require 'carrierwave/storage/ftp/ex_ftp_mixin'

class ExFTPTLS < Net::FTP
  include ExFTPMixin

  def self.new(host = nil, options = {})
    options[:ssl] = true unless options[:ssl]
    super(host, options)
  end
end
