require 'pem/version'
require 'pem/manager'
require 'pem/options'

require 'fastlane_core'

module PEM
  # Use this to just setup the configuration attribute and set it later somewhere else
  class << self
    attr_accessor :config
  end

  TMP_FOLDER = "/tmp/PEM/"
  FileUtils.mkdir_p TMP_FOLDER

  ENV['FASTLANE_TEAM_ID'] ||= ENV["PEM_TEAM_ID"]
  ENV['DELIVER_USER'] ||= ENV["PEM_USERNAME"]

  Helper = FastlaneCore::Helper # you gotta love Ruby: Helper.* should use the Helper class contained in FastlaneCore
  UI = FastlaneCore::UI
end