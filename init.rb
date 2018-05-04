require 'redmine'

Rails.configuration.to_prepare do
  RedmineAbsoluteDates::ApplicationHelperPatch.apply
end

Redmine::Plugin.register :redmine_absolute_dates do
  name 'Redmine Absolute Dates plugin'
  author 'suer, Jens Kraemer (Planio GmbH)'
  description 'Display absolute create or update dates '
  version '0.1.0'
  url 'https://github.com/planio-gmbh/redmine_absolute_dates'
  author_url 'http://d.hatena.ne.jp/suer'
  requires_redmine version_or_higher: '3.3.0'
end
