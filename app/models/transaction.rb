class Transaction < ApplicationRecord
  def import(import_file)
    lines = import_file.read.split("\n")

    lines.each do |line|
      ImportService.parse line
    end
  end
end
