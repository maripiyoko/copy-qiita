module ApplicationHelper

  def markdown(text)
    return '' unless text
    unless @markdown
      renderer = Redcarpet::Render::HTML.new
      @markdown = Redcarpet::Markdown.new(renderer)
    end
    @markdown.render(text).html_safe
  end
end
