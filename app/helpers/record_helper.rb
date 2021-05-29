module RecordHelper
  def dom_id_for_records(*records)
    records.map { |record| dom_id(record) }.join('_')
  end
end
