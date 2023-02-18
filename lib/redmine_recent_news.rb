require 'redmine'


module RedmineRecentNews
  def self.included(base)
    Redmine::WikiFormatting::Macros.register do
      desc "Show list of recent news"
      macro :recent_news do |obj, args|
        args, options = extract_macro_options(args, :parent)

        if obj
          if obj.is_a? WikiContent
            project = obj.page.wiki.project
          else
            project = obj.project
          end
        else
          project = Project.visible.where(identifier: params[:project_id]).first
        end

        if project
          render partial: 'hooks/recent_news', project: project
        end
      end
    end
  end
end

MyController.send(:include, RedmineRecentNews)
