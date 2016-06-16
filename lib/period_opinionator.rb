require "period_opinionator/version"

module PeriodOpinionator

  def self.correct(text)
    fixed_text = remove_extra_spaces_after_period(text)

    { body: fixed_text,
      diff: "blah" }
  end

  def remove_extra_spaces_after_period(text)
    text.gsub(/\. +/, ". ")
  end
end
