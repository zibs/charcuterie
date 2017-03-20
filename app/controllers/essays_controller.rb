class EssaysController < ApplicationController

  def no_studio_no_privilege
    @markdown_content = File.read(File.join(Rails.root.to_s, 'app/views/essays', 'no-studio-no-privilege.md'))
  end

  def index

  end


end
