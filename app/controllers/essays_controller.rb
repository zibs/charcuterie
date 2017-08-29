class EssaysController < ApplicationController

  def no_studio_no_privilege
    @markdown_content = File.read(File.join(Rails.root.to_s, 'app/views/essays', 'no_studio_no_privilege.md'))
    render_show
  end

  def my_argument_is_wrong_but
    @markdown_content = File.read(File.join(Rails.root.to_s, 'app/views/essays', 'my_argument_is_wrong_but.md'))
    render_show
  end

  def how_to_tame_a_fly
    @markdown_content = File.read(File.join(Rails.root.to_s, 'app/views/essays', 'how_to_tame_a_fly.md'))
    render_show
  end

  def the_empty_husk_condition
    @markdown_content = File.read(File.join(Rails.root.to_s, 'app/views/essays', 'the_empty_husk_condition.md'))
    render_show
  end

  def adventures_from_the_third_bureau
    @markdown_content = File.read(File.join(Rails.root.to_s, 'app/views/essays', 'adventures_from_the_third_bureau.md'))
    render_show
  end

  def the_bus_as_hostile_architecture_I
    @markdown_content = File.read(File.join(Rails.root.to_s, 'app/views/essays', 'the_bus_as_hostile_architecture_I.md'))
    render_show
  end

  def ciff_selections
    @markdown_content = File.read(File.join(Rails.root.to_s, 'app/views/essays', 'ciff_selections.md'))
    render_show
  end

  def misogyny_as_orientation
    @markdown_content = File.read(File.join(Rails.root.to_s, 'app/views/essays', 'misogyny_as_orientation.md'))
    render_show
  end

  def index

  end


  private
    def render_show
      render "show"
    end

end
