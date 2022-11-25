module ApplicationHelper
  def bs_icon(name, options = {})
    final_options = options.deep_dup

    classes = ['bi', "bi-#{name}"]
    classes.concat(Array(final_options.delete(:class)))

    content_tag(:i, nil, final_options.merge(class: classes))
  end
end
