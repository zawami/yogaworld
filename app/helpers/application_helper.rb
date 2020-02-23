# frozen_string_literal: true

module ApplicationHelper
  def document_title
    if @title.present?
      "#{@title} - YOGAWORLD"
    else
      "YOGAWORLD"
    end
  end
end
