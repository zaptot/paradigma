class Schedule < ApplicationRecord
  belongs_to :employee
  belongs_to :child

  FORMS = %w[Подгрупповая Групповая Индивидуальная].freeze

  enum form: FORMS.map { |form| [form, form] }.to_h
end
