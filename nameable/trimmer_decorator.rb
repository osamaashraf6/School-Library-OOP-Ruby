require_relative 'nameable_decorator'

class TrimmerDecorator < NameableDecorator
  def correct_name
    @nameable.correct_name.length > 10 ? @nameable.correct_name[0..9] : @nameable.correct_name
  end
end
