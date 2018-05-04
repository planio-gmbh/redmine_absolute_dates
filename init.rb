require 'redmine'

Rails.configuration.to_prepare do
  RedmineAbsoluteDates::ApplicationHelperPatch.apply
end

Redmine::Plugin.register :redmine_absolute_dates do
  name 'Redmine Absolute Dates plugin'
  author 'suer'
  description 'Display absolute create or update dates '
  version '0.0.3'
  url 'https://github.com/suer/redmine_absolute_dates'
  author_url 'http://d.hatena.ne.jp/suer'
end
