class SearchPresenter < Mystique::Presenter
  def search_result
    title = case target
            when Post
              target.title
            when User
              "#{target.last_name}, #{target.first_name} (#{target.email})"
            else
              target.inspect
            end

    [
     h.content_tag(:small, "(#{target.class}) "),
     h.link_to(title, target)
    ].join.html_safe

  end
end
