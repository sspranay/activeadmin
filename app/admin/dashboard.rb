ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    #div class: "blank_slate_container", id: "dashboard_default_message" do
    #  span class: "blank_slate" do
    #    span I18n.t("active_admin.dashboard_welcome.welcome")
    #    small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #  end
    #end

    # Here is an example of a simple dashboard with columns and panels.
    #
     columns do
       column do
         panel "Recently added Contracts" do
           ul do
             Contract.last(5).map do |contract|
               li link_to(contract.title, admin_contract_path(contract))
             end
           end
         end
       end

       column do
         panel "Info" do
           para "Welcome to ECS Contract Database."
           para "This is a prototype app done using Rails gem - ActiveAdmin.
                It uses devise for authentication."
         end
       end
     end
  end # content
end
