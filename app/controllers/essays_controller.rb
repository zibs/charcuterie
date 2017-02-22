class EssaysController < ApplicationController

  def demo
    @markdown_content = File.read(File.join(Rails.root.to_s, 'app/views/essays', 'demo.md'))
  end

  def index
  
  end


end
