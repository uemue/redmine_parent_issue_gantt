Redmine::Plugin.register :parent_issue_gantt do
  name 'Parent Issue Gantt plugin'
  author 'uemue'
  description 'Includes parent issues in Gantt charts for better visibility.'
  version '0.0.1'
  url 'https://github.com/uemue/redmine_parent_issue_gantt'
  author_url 'https://github.com/uemue'
end

require File.expand_path('../lib/parent_issue_gantt/gantt_patch', __FILE__)
Redmine::Helpers::Gantt.prepend ParentIssueGantt::GanttPatch
