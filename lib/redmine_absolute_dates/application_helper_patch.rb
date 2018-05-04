module RedmineAbsoluteDates
  module ApplicationHelperPatch
    def self.apply
      unless ApplicationHelper < self
        ApplicationHelper.send :include, self
        ApplicationHelper.class_eval do
          alias_method :authoring, :authoring_with_absolute_date
          alias_method :time_tag, :time_tag_with_absolute_date
        end
      end
    end

    def authoring_with_absolute_date(created, author, options={})
      l(options[:label] || :label_added_absolute_time_by, :author => link_to_user(author), :age => time_tag(created)).html_safe
    end

    def time_tag_with_absolute_date(time)
      zone = User.current.time_zone
      local = zone ? time.in_time_zone(zone) : (time.utc? ? time.localtime : time)
      text = format_date(local)
      if @project
        link_to(text, project_activity_path(@project, :from => User.current.time_to_date(time)), :title => format_time(time))
      else
        content_tag('abbr', text, :title => format_time(time))
      end

    end
  end
end
