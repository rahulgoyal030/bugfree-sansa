module ForumPostsHelper
	def markdownify(content)
		filter_context = { gfm: true}
		filter = HTML::Pipeline.new [
		HTML::Pipeline::MarkdownFilter,
		HTML::Pipeline::SanitizationFilter
		], filter_context
		filter.call(content)[:output].to_s.html_safe
	end
end
