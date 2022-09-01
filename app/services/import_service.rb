class ImportService
  def import(import_file)
    file_content = File.open(import_file.path, 'r:UTF-8', &:read)
    lines = file_content.split("\n")

    lines.each { |line| parse line }
  end

  def parse(instance)
    kind = instance[0].to_i
    date = instance[1..8].to_i
    value = (instance[9..18].to_f / 100).round(2)
    cpf = instance[19..29].to_i
    card = instance[30..41]
    time = instance[42..47].to_i
    owner = instance[48..61].strip
    store_name = instance[62..80].strip

    transaction = Transaction.new(kind: kind, date: date, value: value, cpf: cpf, card: card, time: time, owner: owner,
                                  name: store_name)

    if transaction
      proprietor = Owner.find_or_create_by(name: owner)
      transaction.owner_id = proprietor.id
      proprietor.save
      transaction.save
    end
  end
end
