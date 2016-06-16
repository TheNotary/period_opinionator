require 'diffy'

require "period_opinionator/version"

module PeriodOpinionator

  def self.correct(text)
    fixed_text = remove_extra_spaces_after_period(text)

    { body: fixed_text,
      diff: Diffy::Diff.new(text, fixed_text).to_s(:html_simple) }
  end

  def remove_extra_spaces_after_period(text)
    text.gsub(/\. +/, ". ")
  end
end
