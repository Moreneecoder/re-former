module UserHelper
 def new_user_error(user)
     if user.errors.any?
        concat(content_tag(:h1, "#{ pluralize(user.errors.count, 'error') } prohibited this post from being saved:"))

        content_tag(:ul) do
         user.errors.full_messages.each do |msg|
            concat( content_tag(:li, msg) )
         end
        end
        
     end
 end
end
