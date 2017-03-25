class EssaysController < ApplicationController

  def no_studio_no_privilege
    @markdown_content = File.read(File.join(Rails.root.to_s, 'app/views/essays', 'no_studio_no_privilege.md'))
  end

  def my_argument_is_wrong_but
    @markdown_content = File.read(File.join(Rails.root.to_s, 'app/views/essays', 'my_argument_is_wrong_but.md'))
  end

  def index

  end


end
