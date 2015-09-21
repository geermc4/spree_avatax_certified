Deface::Override.new(
  virtual_path: 'spree/admin/users/_sidebar',
  name:         'add avalara information link',
  insert_bottom:   '[data-hook="admin_user_tab_options"]',
  text: "<li>
        <%= link_to avalara_information_admin_user_path(@user) do %>
          <span class='icon icon-thumbs-down'></span>
          <span class='text'>Avalara</span>
        <% end %>
      </li>"
)
