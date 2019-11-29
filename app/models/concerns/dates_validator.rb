class DatesValidator < ActiveModel::Validator
  def validate(record)
    if record.ending_date < record.starting_date
      record.errors.add(:ending_date, "Impossible de louer dans le passé")
    end
  end
end
