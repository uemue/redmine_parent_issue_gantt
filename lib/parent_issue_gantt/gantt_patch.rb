module ParentIssueGantt
  module GanttPatch
    def initialize(options = {})
      super
      @include_parent_issues = options[:include_parent_issues]
    end

    def issues
      super
      
      if @include_parent_issues
        @issues_with_ancestors ||= @issues.map(&:self_and_ancestors).flatten.uniq.sort_by{|issue| [issue.lft, issue.id]}
        @issues = @issues_with_ancestors
      end

      @issues
    end
  end
end
