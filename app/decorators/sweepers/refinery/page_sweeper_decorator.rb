Refinery::PageSweeper.class_eval do
  def sweep(page)
    # Because in after_create the root is nil. Why?
    page_root_id = page.root.nil? ? page.parent.root.id : page.root.id

    expire_cache # calling expire page cache protected method in Refinery::PageSweeper
    expire_fragment("refinery/main_navigation")
    expire_fragment("refinery/submenu/root_id_#{page_root_id}")
  end


  alias_method :after_create, :sweep
  alias_method :after_update, :sweep
  alias_method :after_destroy, :sweep
end