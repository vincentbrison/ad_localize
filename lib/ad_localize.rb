require 'rubygems'
require 'bundler/setup'
require 'active_support'
require 'active_support/core_ext'
require 'byebug'
require 'fileutils'
require 'pathname'
require 'yaml'
require 'logger'
require 'colorize'
require 'csv'
require 'active_support'
require 'open-uri'
require 'optparse'
require 'json'
require 'nokogiri'

require 'ad_localize/ad_logger'
require 'ad_localize/constant'
require 'ad_localize/csv_file_manager'
require 'ad_localize/csv_parser'
require 'ad_localize/option_handler'
require 'ad_localize/runner'
require 'ad_localize/platform/platform_formatter'
require 'ad_localize/platform/android_formatter'
require 'ad_localize/platform/ios_formatter'
require 'ad_localize/platform/json_formatter'
require 'ad_localize/platform/yml_formatter'

module AdLocalize
  LOGGER = AdLogger.new

  def self.run
    Runner.new.run
  end
end