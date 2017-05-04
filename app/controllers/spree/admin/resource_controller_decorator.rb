Spree::Admin::ResourceController.class_eval do
  def set_vendor_id
    # TODO: user should have some kind of switcher to select Vendor account
    params[resource.object_name.to_sym][:vendor_id] = spree_current_vendor.try(:id)
  end
end
