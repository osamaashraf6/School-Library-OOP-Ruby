require_relative 'base_decorator'

class CapitalizeDecorator < NameableDecorator
  def correct_name
    @nameable_obj.correct_name.capitalize
  end
end
