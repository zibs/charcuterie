class EssaysController < ApplicationController
  before_action :detect_device_format
  before_action :set_essay_title_for_mobile
  # before_action :get_markdown_for_desktop, except: [:index, :paqs, :authors, :info, :charc_one, :charc_two, :charc_three]

  def no_studio_no_privilege
    render_show
    # respond_to do |format|
    #   format.html do |html|
    #     html.mobile { render_show }
    #     html.desktop { render_show }
    #   end
    # end
  end

  def my_argument_is_wrong_but
    render_show
  end

  def how_to_tame_a_fly
    render_show
  end

  def the_empty_husk_condition
    render_show
  end

  def adventures_from_the_third_bureau
    render_show
  end

  def the_bus_as_hostile_architecture_I
    render_show
  end

  def ciff_selections
    render_show
  end

  def misogyny_as_orientation
    render_show
  end

  def index
  end

  def paqs
  end

  def authors
  end
  
  def info
  end

  def charc_one
  end

  def charc_two
  end
  
  def charc_three
  end

  def bus_two
    render_show
  end

  def flatten_exp
    render_show
  end

  def seven_years
    render_show
  end

  def two_mistakes
    render_show
  end

  def nice_poem
    render_show
  end

  def tell_them
    render_show
  end


  private

    def render_show
      render "show"
    end

    def detect_device_format
     case request.user_agent
     when /iPad/i
       request.variant = :mobile
     when /iPhone/i
       request.variant = :mobile
     when /Android/i && /mobile/i
       request.variant = :mobile
     when /Android/i
       request.variant = :mobile
     when /Windows Phone/i
       request.variant = :mobile
     else
      request.variant = :desktop
     end
     request.variant = :mobile
     @variant = request.variant
   end

   def set_essay_title_for_mobile 
    @title = params[:action]
   end

   def get_markdown_for_desktop
    @markdown_content = File.read(File.join(Rails.root.to_s, 'app/views/essays', "#{@title}.md"))
   end

end
